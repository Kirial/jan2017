connect -url tcp:127.0.0.1:3121
source C:/Projects/jan2017/ZYBO-master/tests/JesperTest/proj/hdmi_in.sdk/hdmi_in_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279574575A"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279574575A" && level==0} -index 1
fpga -file C:/Projects/jan2017/ZYBO-master/tests/JesperTest/proj/hdmi_in.sdk/hdmi_in_wrapper_hw_platform_0/hdmi_in_wrapper.bit
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279574575A"} -index 0
loadhw C:/Projects/jan2017/ZYBO-master/tests/JesperTest/proj/hdmi_in.sdk/hdmi_in_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279574575A"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279574575A"} -index 0
dow C:/Projects/jan2017/ZYBO-master/tests/JesperTest/proj/hdmi_in.sdk/motorTest/Debug/motorTest.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279574575A"} -index 0
con
