#========================================================
# Vivado BD design auto run script for MPSoC in ZCU102
# Based on Vivado 2017.2
# Author: Yisong Chang (changyisong@ict.ac.cn)
# Date: 22/12/2017
#========================================================

namespace eval sim_bd_val {
	set design_name sim
	set bd_prefix ${sim_bd_val::design_name}_

}


# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${sim_bd_val::design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne ${sim_bd_val::design_name} } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <${sim_bd_val::design_name}> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq ${sim_bd_val::design_name} } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <${sim_bd_val::design_name}> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${sim_bd_val::design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <${sim_bd_val::design_name}> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <${sim_bd_val::design_name}> in project, so creating one..."

   create_bd_design ${sim_bd_val::design_name}

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <${sim_bd_val::design_name}> as current_bd_design."
   current_bd_design ${sim_bd_val::design_name}

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"${sim_bd_val::design_name}\"."

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

  # Create interconnect
  set mips_axi_ic [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mips_axi_ic ]
  set_property -dict [list CONFIG.NUM_MI {3} CONFIG.NUM_SI {1}] $mips_axi_ic
  
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
  create_bd_port -dir I -type clk mips_cpu_clk

#==============================================
# Reset ports
#==============================================
  # MIPS CPU reset output
  create_bd_port -dir I -type rst mips_cpu_reset
  set_property CONFIG.ACTIVE_POLARITY {HIGH} [get_bd_port mips_cpu_reset]

#==============================================
# Export AXI Interface
#==============================================
  set mips_cpu_axi_mem [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 mips_cpu_axi_mem]
  set_property -dict [ list CONFIG.PROTOCOL {AXI4Lite} ] $mips_cpu_axi_mem

  set bram_axi_if [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 bram_axi_if]

  set_property CONFIG.ASSOCIATED_BUSIF {mips_cpu_axi_mem:bram_axi_if} [get_bd_ports mips_cpu_clk]

#==============================================
# MIPS performance counters
#==============================================

  set i 0
  while {$i < 16} {
	  create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_$i
	  incr i 1
  }

#=============================================
# UART Tx
#=============================================
  create_bd_port -dir O uart_tx

#=============================================
# System clock connection
#=============================================
  connect_bd_net -net mips_clk [get_bd_pin mips_cpu_clk] \
			[get_bd_pins mips_axi_ic/*ACLK] \
			[get_bd_pins axi_uart/s_axi_aclk] \
			[get_bd_pins axi4_gpio_ic/*ACLK]

  set i 0
  while {$i < 8} {
	  connect_bd_net -net mips_clk [get_bd_pin mips_cpu_clk] \
			[get_bd_pins axi_gpio_$i/s_axi_aclk]

	  incr i 1
  }

#=============================================
# System reset connection
#=============================================
  set mips_reset_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 mips_reset_gen ]
  set_property -dict [ list CONFIG.C_OPERATION {not} \
			CONFIG.C_SIZE {1} ] $mips_reset_gen

  connect_bd_net -net mips_reset_n_gen [get_bd_pins mips_cpu_reset] \
			[get_bd_pins mips_reset_gen/Op1]

  connect_bd_net -net mips_cpu_resetn [get_bd_pins mips_reset_gen/Res] \
			[get_bd_pins mips_axi_ic/*ARESETN] \
			[get_bd_pins axi4_gpio_ic/*ARESETN] \
			[get_bd_pins axi_uart/s_axi_aresetn]

  set i 0
  while {$i < 8} {
	  connect_bd_net -net mips_cpu_resetn [get_bd_pins axi_uart/s_axi_aresetn] \
			[get_bd_pins axi_gpio_$i/s_axi_aresetn]

	  incr i 1
  }

#==============================================
# AXI Interface Connection
#==============================================
  connect_bd_intf_net -intf_net mips_cpu_master [get_bd_intf_pins mips_axi_ic/S00_AXI] \
			[get_bd_intf_pins mips_cpu_axi_mem] 

  connect_bd_intf_net -intf_net axi_ddr_if [get_bd_intf_pins mips_axi_ic/M00_AXI] \
			[get_bd_intf_pins bram_axi_if]

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

#=============================================
# Other ports
#=============================================
  connect_bd_net -net uart_tx [get_bd_pins axi_uart/tx] [get_bd_pins uart_tx]

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

  create_bd_addr_seg -range 0x10000 -offset 0x40000000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs bram_axi_if/Reg] MIPS_MEM
  create_bd_addr_seg -range 0x1000 -offset 0x40010000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_uart/S_AXI/Reg] MIPS_UART

  set i 0
  set addr_base 0x40020000
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

