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
ExecStep $xv_path/bin/xsim mips_cpu_test_behav -key {Behavioral:sim_1:Functional:mips_cpu_test} -tclbatch /home/cod/Desktop/prj5_1/v1/prj5-cpu-opt-harvardchen/hardware/scripts/sim/xsim_run.tcl -log simulate.log
