connect -url tcp:127.0.0.1:3121
source C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/hdmi_in/proj/hdmi_in.sdk/hdmi_in_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279574526A"} -index 0
loadhw C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/hdmi_in/proj/hdmi_in.sdk/hdmi_in_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279574526A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279574526A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279574526A"} -index 0
dow C:/Users/taras/OneDrive/skolenProjekt/3UgersProjektJan2017/hdmi_in/proj/hdmi_in.sdk/yuthjghjgkj/Debug/yuthjghjgkj.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279574526A"} -index 0
con
