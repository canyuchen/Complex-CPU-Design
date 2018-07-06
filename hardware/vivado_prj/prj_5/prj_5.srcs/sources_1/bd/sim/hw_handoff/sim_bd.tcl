
################################################################
# This is a generated script based on design: sim
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source sim_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu2eg-sfva625-1-e
   set_property BOARD_PART interwiser:none:part0:2.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name sim

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

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


  # Create interface ports
  set bram_axi_if [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 bram_axi_if ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.DATA_WIDTH {32} \
CONFIG.PROTOCOL {AXI4} \
 ] $bram_axi_if
  set mips_cpu_axi_mem [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 mips_cpu_axi_mem ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {32} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {1} \
CONFIG.HAS_CACHE {1} \
CONFIG.HAS_LOCK {1} \
CONFIG.HAS_PROT {1} \
CONFIG.HAS_QOS {1} \
CONFIG.HAS_REGION {1} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {0} \
CONFIG.MAX_BURST_LENGTH {1} \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_READ_THREADS {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
CONFIG.NUM_WRITE_THREADS {1} \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_BITS_PER_BYTE {0} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {0} \
CONFIG.WUSER_BITS_PER_BYTE {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $mips_cpu_axi_mem

  # Create ports
  set mips_cpu_clk [ create_bd_port -dir I -type clk mips_cpu_clk ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {mips_cpu_axi_mem:bram_axi_if} \
 ] $mips_cpu_clk
  set mips_cpu_reset [ create_bd_port -dir I -type rst mips_cpu_reset ]
  set mips_perf_cnt_0 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_0 ]
  set mips_perf_cnt_1 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_1 ]
  set mips_perf_cnt_2 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_2 ]
  set mips_perf_cnt_3 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_3 ]
  set mips_perf_cnt_4 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_4 ]
  set mips_perf_cnt_5 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_5 ]
  set mips_perf_cnt_6 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_6 ]
  set mips_perf_cnt_7 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_7 ]
  set mips_perf_cnt_8 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_8 ]
  set mips_perf_cnt_9 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_9 ]
  set mips_perf_cnt_10 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_10 ]
  set mips_perf_cnt_11 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_11 ]
  set mips_perf_cnt_12 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_12 ]
  set mips_perf_cnt_13 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_13 ]
  set mips_perf_cnt_14 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_14 ]
  set mips_perf_cnt_15 [ create_bd_port -dir I -from 31 -to 0 mips_perf_cnt_15 ]
  set uart_tx [ create_bd_port -dir O uart_tx ]

  # Create instance: axi4_gpio_ic, and set properties
  set axi4_gpio_ic [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi4_gpio_ic ]
  set_property -dict [ list \
CONFIG.NUM_MI {8} \
CONFIG.NUM_SI {1} \
 ] $axi4_gpio_ic

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {32} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {32} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_1

  # Create instance: axi_gpio_2, and set properties
  set axi_gpio_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {32} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_2

  # Create instance: axi_gpio_3, and set properties
  set axi_gpio_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_3 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {32} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_3

  # Create instance: axi_gpio_4, and set properties
  set axi_gpio_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_4 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {32} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_4

  # Create instance: axi_gpio_5, and set properties
  set axi_gpio_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_5 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {32} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_5

  # Create instance: axi_gpio_6, and set properties
  set axi_gpio_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_6 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {32} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_6

  # Create instance: axi_gpio_7, and set properties
  set axi_gpio_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_7 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {32} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_7

  # Create instance: axi_uart, and set properties
  set axi_uart [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uart ]
  set_property -dict [ list \
CONFIG.C_BAUDRATE {115200} \
 ] $axi_uart

  # Create instance: mips_axi_ic, and set properties
  set mips_axi_ic [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mips_axi_ic ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
CONFIG.NUM_SI {1} \
 ] $mips_axi_ic

  # Create instance: mips_reset_gen, and set properties
  set mips_reset_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 mips_reset_gen ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $mips_reset_gen

  # Create interface connections
  connect_bd_intf_net -intf_net axi_ddr_if [get_bd_intf_ports bram_axi_if] [get_bd_intf_pins mips_axi_ic/M00_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_m_0 [get_bd_intf_pins axi4_gpio_ic/M00_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_m_1 [get_bd_intf_pins axi4_gpio_ic/M01_AXI] [get_bd_intf_pins axi_gpio_1/S_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_m_2 [get_bd_intf_pins axi4_gpio_ic/M02_AXI] [get_bd_intf_pins axi_gpio_2/S_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_m_3 [get_bd_intf_pins axi4_gpio_ic/M03_AXI] [get_bd_intf_pins axi_gpio_3/S_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_m_4 [get_bd_intf_pins axi4_gpio_ic/M04_AXI] [get_bd_intf_pins axi_gpio_4/S_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_m_5 [get_bd_intf_pins axi4_gpio_ic/M05_AXI] [get_bd_intf_pins axi_gpio_5/S_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_m_6 [get_bd_intf_pins axi4_gpio_ic/M06_AXI] [get_bd_intf_pins axi_gpio_6/S_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_m_7 [get_bd_intf_pins axi4_gpio_ic/M07_AXI] [get_bd_intf_pins axi_gpio_7/S_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ic_s [get_bd_intf_pins axi4_gpio_ic/S00_AXI] [get_bd_intf_pins mips_axi_ic/M02_AXI]
  connect_bd_intf_net -intf_net axi_uart [get_bd_intf_pins axi_uart/S_AXI] [get_bd_intf_pins mips_axi_ic/M01_AXI]
  connect_bd_intf_net -intf_net mips_cpu_master [get_bd_intf_ports mips_cpu_axi_mem] [get_bd_intf_pins mips_axi_ic/S00_AXI]

  # Create port connections
  connect_bd_net -net mips_clk [get_bd_ports mips_cpu_clk] [get_bd_pins axi4_gpio_ic/ACLK] [get_bd_pins axi4_gpio_ic/M00_ACLK] [get_bd_pins axi4_gpio_ic/M01_ACLK] [get_bd_pins axi4_gpio_ic/M02_ACLK] [get_bd_pins axi4_gpio_ic/M03_ACLK] [get_bd_pins axi4_gpio_ic/M04_ACLK] [get_bd_pins axi4_gpio_ic/M05_ACLK] [get_bd_pins axi4_gpio_ic/M06_ACLK] [get_bd_pins axi4_gpio_ic/M07_ACLK] [get_bd_pins axi4_gpio_ic/S00_ACLK] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_gpio_2/s_axi_aclk] [get_bd_pins axi_gpio_3/s_axi_aclk] [get_bd_pins axi_gpio_4/s_axi_aclk] [get_bd_pins axi_gpio_5/s_axi_aclk] [get_bd_pins axi_gpio_6/s_axi_aclk] [get_bd_pins axi_gpio_7/s_axi_aclk] [get_bd_pins axi_uart/s_axi_aclk] [get_bd_pins mips_axi_ic/ACLK] [get_bd_pins mips_axi_ic/M00_ACLK] [get_bd_pins mips_axi_ic/M01_ACLK] [get_bd_pins mips_axi_ic/M02_ACLK] [get_bd_pins mips_axi_ic/S00_ACLK]
  connect_bd_net -net mips_cpu_resetn [get_bd_pins axi4_gpio_ic/ARESETN] [get_bd_pins axi4_gpio_ic/M00_ARESETN] [get_bd_pins axi4_gpio_ic/M01_ARESETN] [get_bd_pins axi4_gpio_ic/M02_ARESETN] [get_bd_pins axi4_gpio_ic/M03_ARESETN] [get_bd_pins axi4_gpio_ic/M04_ARESETN] [get_bd_pins axi4_gpio_ic/M05_ARESETN] [get_bd_pins axi4_gpio_ic/M06_ARESETN] [get_bd_pins axi4_gpio_ic/M07_ARESETN] [get_bd_pins axi4_gpio_ic/S00_ARESETN] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_gpio_2/s_axi_aresetn] [get_bd_pins axi_gpio_3/s_axi_aresetn] [get_bd_pins axi_gpio_4/s_axi_aresetn] [get_bd_pins axi_gpio_5/s_axi_aresetn] [get_bd_pins axi_gpio_6/s_axi_aresetn] [get_bd_pins axi_gpio_7/s_axi_aresetn] [get_bd_pins axi_uart/s_axi_aresetn] [get_bd_pins mips_axi_ic/ARESETN] [get_bd_pins mips_axi_ic/M00_ARESETN] [get_bd_pins mips_axi_ic/M01_ARESETN] [get_bd_pins mips_axi_ic/M02_ARESETN] [get_bd_pins mips_axi_ic/S00_ARESETN] [get_bd_pins mips_reset_gen/Res]
  connect_bd_net -net mips_perf_cnt_0_1 [get_bd_ports mips_perf_cnt_0] [get_bd_pins axi_gpio_0/gpio_io_i]
  connect_bd_net -net mips_perf_cnt_10_1 [get_bd_ports mips_perf_cnt_10] [get_bd_pins axi_gpio_5/gpio_io_i]
  connect_bd_net -net mips_perf_cnt_11_1 [get_bd_ports mips_perf_cnt_11] [get_bd_pins axi_gpio_5/gpio2_io_i]
  connect_bd_net -net mips_perf_cnt_12_1 [get_bd_ports mips_perf_cnt_12] [get_bd_pins axi_gpio_6/gpio_io_i]
  connect_bd_net -net mips_perf_cnt_13_1 [get_bd_ports mips_perf_cnt_13] [get_bd_pins axi_gpio_6/gpio2_io_i]
  connect_bd_net -net mips_perf_cnt_14_1 [get_bd_ports mips_perf_cnt_14] [get_bd_pins axi_gpio_7/gpio_io_i]
  connect_bd_net -net mips_perf_cnt_15_1 [get_bd_ports mips_perf_cnt_15] [get_bd_pins axi_gpio_7/gpio2_io_i]
  connect_bd_net -net mips_perf_cnt_1_1 [get_bd_ports mips_perf_cnt_1] [get_bd_pins axi_gpio_0/gpio2_io_i]
  connect_bd_net -net mips_perf_cnt_2_1 [get_bd_ports mips_perf_cnt_2] [get_bd_pins axi_gpio_1/gpio_io_i]
  connect_bd_net -net mips_perf_cnt_3_1 [get_bd_ports mips_perf_cnt_3] [get_bd_pins axi_gpio_1/gpio2_io_i]
  connect_bd_net -net mips_perf_cnt_4_1 [get_bd_ports mips_perf_cnt_4] [get_bd_pins axi_gpio_2/gpio_io_i]
  connect_bd_net -net mips_perf_cnt_5_1 [get_bd_ports mips_perf_cnt_5] [get_bd_pins axi_gpio_2/gpio2_io_i]
  connect_bd_net -net mips_perf_cnt_6_1 [get_bd_ports mips_perf_cnt_6] [get_bd_pins axi_gpio_3/gpio_io_i]
  connect_bd_net -net mips_perf_cnt_7_1 [get_bd_ports mips_perf_cnt_7] [get_bd_pins axi_gpio_3/gpio2_io_i]
  connect_bd_net -net mips_perf_cnt_8_1 [get_bd_ports mips_perf_cnt_8] [get_bd_pins axi_gpio_4/gpio_io_i]
  connect_bd_net -net mips_perf_cnt_9_1 [get_bd_ports mips_perf_cnt_9] [get_bd_pins axi_gpio_4/gpio2_io_i]
  connect_bd_net -net mips_reset_n_gen [get_bd_ports mips_cpu_reset] [get_bd_pins mips_reset_gen/Op1]
  connect_bd_net -net uart_tx [get_bd_ports uart_tx] [get_bd_pins axi_uart/tx]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs bram_axi_if/Reg] MIPS_MEM
  create_bd_addr_seg -range 0x00001000 -offset 0x40020000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] MIPS_PERF_CNT_0
  create_bd_addr_seg -range 0x00001000 -offset 0x40021000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] MIPS_PERF_CNT_1
  create_bd_addr_seg -range 0x00001000 -offset 0x40022000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_2/S_AXI/Reg] MIPS_PERF_CNT_2
  create_bd_addr_seg -range 0x00001000 -offset 0x40023000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_3/S_AXI/Reg] MIPS_PERF_CNT_3
  create_bd_addr_seg -range 0x00001000 -offset 0x40024000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_4/S_AXI/Reg] MIPS_PERF_CNT_4
  create_bd_addr_seg -range 0x00001000 -offset 0x40025000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_5/S_AXI/Reg] MIPS_PERF_CNT_5
  create_bd_addr_seg -range 0x00001000 -offset 0x40026000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_6/S_AXI/Reg] MIPS_PERF_CNT_6
  create_bd_addr_seg -range 0x00001000 -offset 0x40027000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_gpio_7/S_AXI/Reg] MIPS_PERF_CNT_7
  create_bd_addr_seg -range 0x00001000 -offset 0x40010000 [get_bd_addr_spaces mips_cpu_axi_mem] [get_bd_addr_segs axi_uart/S_AXI/Reg] MIPS_UART


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


