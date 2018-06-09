#========================================================
# Vivado BD design auto run script for MPSoC in ZCU102
# Based on Vivado 2017.2
# Author: Yisong Chang (changyisong@ict.ac.cn)
# Date: 22/12/2017
#========================================================

namespace eval mpsoc_bd_val {
	set design_name mpsoc
	set bd_prefix ${mpsoc_bd_val::design_name}_

}


# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${mpsoc_bd_val::design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne ${mpsoc_bd_val::design_name} } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <${mpsoc_bd_val::design_name}> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq ${mpsoc_bd_val::design_name} } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <${mpsoc_bd_val::design_name}> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${mpsoc_bd_val::design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <${mpsoc_bd_val::design_name}> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <${mpsoc_bd_val::design_name}> in project, so creating one..."

   create_bd_design ${mpsoc_bd_val::design_name}

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <${mpsoc_bd_val::design_name}> as current_bd_design."
   current_bd_design ${mpsoc_bd_val::design_name}

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"${mpsoc_bd_val::design_name}\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################

# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

#=============================================
# Create IP blocks
#=============================================

  # Create instance: Zynq MPSoC
  set zynq_mpsoc [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.0 zynq_mpsoc ]
  apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset "1"} $zynq_mpsoc

  set_property -dict [list CONFIG.PSU__UART1__PERIPHERAL__IO {EMIO} \
					CONFIG.PSU__USE__S_AXI_GP2 {1} \
					CONFIG.PSU__SAXIGP2__DATA_WIDTH {64}] $zynq_mpsoc

  # Create interconnect
  set arm_axi_ic [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 arm_axi_ic ]
  if {${::ila_cfg_num} != "0"} {
	  set_property -dict [list CONFIG.NUM_MI {2} CONFIG.NUM_SI {1}] $arm_axi_ic
  } else {
	  set_property -dict [list CONFIG.NUM_MI {1} CONFIG.NUM_SI {1}] $arm_axi_ic
  }

  set mips_axi_ic [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mips_axi_ic ]
  set_property -dict [list CONFIG.NUM_MI {3} CONFIG.NUM_SI {1}] $mips_axi_ic

  # Create debug bridge
  if {${::ila_cfg_num} != "0"} {
	  set debug_bridge_mpsoc [ create_bd_cell -type ip -vlnv xilinx.com:ip:debug_bridge:2.0 debug_bridge_mpsoc ]
	  set_property -dict [list CONFIG.C_DEBUG_MODE {2} CONFIG.C_TCK_CLOCK_RATIO {2}] [get_bd_cells debug_bridge_mpsoc]
  }

  # Create instance: Reset infrastructure for ARM and MIPS sub systems
  set zynq_reset_infra [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 zynq_reset_infra ]
  set mips_reset_infra [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 mips_reset_infra ]

  # Create instance: clock wizard
  set mips_clk_src [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 mips_clk_src ]
  set_property -dict [list CONFIG.JITTER_OPTIONS {PS} \
			CONFIG.CLKOUT1_REQUESTED_OUT_FREQ ${::cpu_freq} ] $mips_clk_src
  
  # Create instance: AXI UART controller 
  set axi_uart [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uart ]
  set_property -dict [list CONFIG.C_BAUDRATE {115200}] $axi_uart

  # Create instance: up to 8 AXI GPIO controller to connect MIPS performance counter
  set i 0
  while {$i < 8} {
	  set gpio_name axi_gpio_$i
	  set gpio_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 $gpio_name ]
	  set_property -dict [ list CONFIG.C_ALL_INPUTS {1} \
			CONFIG.C_ALL_OUTPUTS {0} \
			CONFIG.C_GPIO_WIDTH {32} \
			CONFIG.C_IS_DUAL {1} \
			CONFIG.C_ALL_INPUTS_2 {1} \
			CONFIG.C_ALL_OUTPUTS_2 {0} \
			CONFIG.C_GPIO2_WIDTH {32} ] $gpio_ctrl

	  incr i 1
  }

  # Create instance: 8 x 1 crossbar for AXI GPIO controllers
  set axi4_gpio_ic [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi4_gpio_ic ]
  set_property -dict [list CONFIG.NUM_MI {8} CONFIG.NUM_SI {1}] $axi4_gpio_ic

#=============================================
# Clock ports
#=============================================
  # MIPS CPU clock output
  create_bd_port -dir O -type clk mips_cpu_clk

#==============================================
# Reset ports
#==============================================
  # MIPS CPU reset output
  create_bd_port -dir O -type rst mips_axi_if_resetn

#==============================================
# Export AXI Interface
#==============================================
  # Connect to DoCE AXI-Lite slave
  set mips_cpu_axi_mmio [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 mips_cpu_axi_mmio]
  set_property -dict [ list CONFIG.PROTOCOL {AXI4Lite} ] $mips_cpu_axi_mmio

  set mips_cpu_axi_mem [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 mips_cpu_axi_mem]
  set_property -dict [ list CONFIG.PROTOCOL {AXI4Lite} ] $mips_cpu_axi_mem

  set_property CONFIG.ASSOCIATED_BUSIF {mips_cpu_axi_mmio:mips_cpu_axi_mem} [get_bd_ports mips_cpu_clk]

#==============================================
# MIPS performance counters
#==============================================

  set i 0
  while {$i < 16} {
	  create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_$i
	  incr i 1
  }

#=============================================
# System clock connection
#=============================================
  connect_bd_net -net armv8_ps_fclk_0 [get_bd_pin zynq_mpsoc/pl_clk0] \
			[get_bd_pins mips_clk_src/clk_in1] \
			[get_bd_pins zynq_mpsoc/maxihpm0_lpd_aclk] \
			[get_bd_pins zynq_reset_infra/slowest_sync_clk] \
			[get_bd_pins arm_axi_ic/ACLK] \
			[get_bd_pins arm_axi_ic/S00_ACLK]

  connect_bd_net -net mips_clk [get_bd_pin mips_clk_src/clk_out1] \
			[get_bd_pins mips_cpu_clk] \
			[get_bd_pins zynq_mpsoc/saxihp0_fpd_aclk] \
			[get_bd_pins arm_axi_ic/M00_ACLK] \
			[get_bd_pins mips_axi_ic/S00_ACLK] \
			[get_bd_pins mips_axi_ic/M00_ACLK] \
			[get_bd_pins mips_axi_ic/M01_ACLK] \
			[get_bd_pins mips_axi_ic/M02_ACLK] \
			[get_bd_pins mips_axi_ic/ACLK] \
			[get_bd_pins axi_uart/s_axi_aclk] \
			[get_bd_pins mips_reset_infra/slowest_sync_clk] \
			[get_bd_pins axi4_gpio_ic/*ACLK]

  set i 0
  while {$i < 8} {
	  connect_bd_net -net mips_clk [get_bd_pin mips_cpu_clk] \
			[get_bd_pins axi_gpio_$i/s_axi_aclk]

	  incr i 1
  }

  if {${::ila_cfg_num} != "0"} {
	  connect_bd_net -net armv8_ps_fclk_0 [get_bd_pin zynq_mpsoc/pl_clk0] \
			[get_bd_pins arm_axi_ic/M01_ACLK] \
			[get_bd_pins debug_bridge_mpsoc/s_axi_aclk]
  }

#=============================================
# System reset connection
#=============================================
  set pl_reset_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 pl_reset_gen ]
  set_property -dict [ list CONFIG.C_OPERATION {not} \
			CONFIG.C_SIZE {1} ] $pl_reset_gen

  connect_bd_net -net ps_user_reset_n [get_bd_pins zynq_mpsoc/pl_resetn0] \
			[get_bd_pins zynq_reset_infra/ext_reset_in] \
			[get_bd_pins mips_reset_infra/ext_reset_in] \
			[get_bd_pins pl_reset_gen/Op1]

  connect_bd_net -net pl_user_reset [get_bd_pins pl_reset_gen/Res] \
			[get_bd_pins mips_clk_src/reset]

  connect_bd_net -net zynq_perip_resetn [get_bd_pins zynq_reset_infra/peripheral_aresetn] \
			[get_bd_pins arm_axi_ic/S00_ARESETN]

  connect_bd_net -net zynq_ic_resetn [get_bd_pins zynq_reset_infra/interconnect_aresetn] \
			[get_bd_pins arm_axi_ic/ARESETN]

  connect_bd_net [get_bd_pins mips_reset_infra/dcm_locked] [get_bd_pins mips_clk_src/locked]

  connect_bd_net -net mips_cpu_resetn [get_bd_pins mips_reset_infra/peripheral_aresetn] \
			[get_bd_pins mips_axi_ic/S00_ARESETN] \
			[get_bd_pins mips_axi_ic/M00_ARESETN] \
			[get_bd_pins mips_axi_ic/M01_ARESETN] \
			[get_bd_pins mips_axi_ic/M02_ARESETN] \
			[get_bd_pins arm_axi_ic/M00_ARESETN] \
			[get_bd_pins axi4_gpio_ic/*_ARESETN] \
			[get_bd_pins axi_uart/s_axi_aresetn] \
			[get_bd_pins mips_axi_if_resetn]

  connect_bd_net -net mips_ic_resetn [get_bd_pins mips_reset_infra/interconnect_aresetn] \
			[get_bd_pins mips_axi_ic/ARESETN] \
			[get_bd_pins axi4_gpio_ic/ARESETN]

  set i 0
  while {$i < 8} {
	  connect_bd_net -net mips_cpu_resetn [get_bd_pins axi_uart/s_axi_aresetn] \
			[get_bd_pins axi_gpio_$i/s_axi_aresetn]

	  incr i 1
  }

  if {${::ila_cfg_num} != "0"} {
  connect_bd_net -net zynq_perip_resetn [get_bd_pins zynq_reset_infra/peripheral_aresetn] \
			[get_bd_pins arm_axi_ic/M01_ARESETN] \
			[get_bd_pins debug_bridge_mpsoc/s_axi_aresetn]
  }

#==============================================
# AXI Interface Connection
#==============================================
  connect_bd_intf_net -intf_net armv8_ps_M_AXI_GP0 [get_bd_intf_pins arm_axi_ic/S00_AXI] \
			[get_bd_intf_pins zynq_mpsoc/M_AXI_HPM0_LPD] 

  connect_bd_intf_net -intf_net mips_cpu_master [get_bd_intf_pins mips_axi_ic/S00_AXI] \
			[get_bd_intf_pins mips_cpu_axi_mem] 

  connect_bd_intf_net -intf_net mips_cpu_slave [get_bd_intf_pins arm_axi_ic/M00_AXI] \
			[get_bd_intf_pins mips_cpu_axi_mmio] 

  connect_bd_intf_net -intf_net axi_ddr_if [get_bd_intf_pins mips_axi_ic/M00_AXI] \
			[get_bd_intf_pins zynq_mpsoc/S_AXI_HP0_FPD]

  connect_bd_intf_net -intf_net axi_uart [get_bd_intf_pins mips_axi_ic/M01_AXI] \
			[get_bd_intf_pins axi_uart/S_AXI]

  connect_bd_intf_net -intf_net axi_gpio_ic_s [get_bd_intf_pins mips_axi_ic/M02_AXI] \
			[get_bd_intf_pins axi4_gpio_ic/S00_AXI]

  set i 0
  while {$i < 8} {
	  connect_bd_intf_net -intf_net axi_gpio_ic_m_$i [get_bd_intf_pins axi4_gpio_ic/M0${i}_AXI] \
			[get_bd_intf_pins axi_gpio_$i/S_AXI]

	  incr i 1
  }

  if {${::ila_cfg_num} != "0"} {
	  connect_bd_intf_net -intf_net axi_debug_bridge [get_bd_intf_pins arm_axi_ic/M01_AXI] \
			[get_bd_intf_pins debug_bridge_mpsoc/S_AXI]
  }

#=============================================
# Other ports
#=============================================
  connect_bd_net -net uart_rx [get_bd_pins axi_uart/rx] [get_bd_pins zynq_mpsoc/emio_uart1_txd]
  connect_bd_net -net uart_tx [get_bd_pins axi_uart/tx] [get_bd_pins zynq_mpsoc/emio_uart1_rxd]

  set i 0
  while {$i < 8} {
	  set idx [expr $i * 2]
	  connect_bd_net [get_bd_pins axi_gpio_$i/gpio_io_i] [get_bd_pins mips_perf_cnt_$idx]

	  incr idx 1
	  connect_bd_net [get_bd_pins axi_gpio_$i/gpio2_io_i] [get_bd_pins mips_perf_cnt_$idx]

	  incr i 1
  }

#=============================================
# Create address segments
#=============================================

  create_bd_addr_seg -range 0x1000 -offset 0x80020000 [get_bd_addr_spaces zynq_mpsoc/Data] [get_bd_addr_segs mips_cpu_axi_mmio/Reg] PS_VIEW_MIPS_REG
  
  if {${::ila_cfg_num} != "0"} {
	  create_bd_addr_seg -range 0x10000 -offset 0x90000000 [get_bd_addr_spaces zynq_mpsoc/Data] [get_bd_addr_segs debug_bridge_mpsoc/S_AXI/Reg0] SEG_debug_bridge_mpsoc_Reg0
  }

  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs zynq_mpsoc/SAXIGP2/HP0_DDR_LOW] MIPS_MEM
  create_bd_addr_seg -range 0x1000 -offset 0x80010000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_uart/S_AXI/Reg] MIPS_UART

  set i 0
  set addr_base 0x80020000
  while {$i < 8} {
	  set addr [expr $addr_base + 0x1000]
	  create_bd_addr_seg -range 0x1000 -offset $addr_base [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_$i/S_AXI/Reg] MIPS_PERF_CNT_$i
	  incr i 1
	  set addr_base $addr
  }

#=============================================
# Finish BD creation 
#=============================================

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""

