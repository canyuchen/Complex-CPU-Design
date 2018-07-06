#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2017.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 352c3f33f1224745a7579fc18deb361c -m64 --debug typical --relax --mt 8 -d "MIPS_CPU_FULL_SIMU=" -d "UART_SIM=" -L blk_mem_gen_v8_3_6 -L xil_defaultlib -L axi_bram_ctrl_v4_0_11 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_uartlite_v2_0_17 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_15 -L util_vector_logic_v2_0_1 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_13 -L fifo_generator_v13_1_4 -L axi_data_fifo_v2_1_12 -L axi_crossbar_v2_1_14 -L axi_protocol_converter_v2_1_13 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot mips_cpu_test_behav xil_defaultlib.mips_cpu_test xil_defaultlib.glbl -log elaborate.log
