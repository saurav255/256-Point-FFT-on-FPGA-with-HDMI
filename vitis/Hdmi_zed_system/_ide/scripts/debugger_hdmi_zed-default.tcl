# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Vivado_Projects\zed_hdmi\vitis\Hdmi_zed_system\_ide\scripts\debugger_hdmi_zed-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Vivado_Projects\zed_hdmi\vitis\Hdmi_zed_system\_ide\scripts\debugger_hdmi_zed-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248B77E41" && level==0 && jtag_device_ctx=="jsn-Zed-210248B77E41-23727093-0"}
fpga -file C:/Vivado_Projects/zed_hdmi/vitis/Hdmi_zed/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Vivado_Projects/zed_hdmi/vitis/Vdma_test/export/Vdma_test/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Vivado_Projects/zed_hdmi/vitis/Hdmi_zed/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Vivado_Projects/zed_hdmi/vitis/Hdmi_zed/Debug/Hdmi_zed.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
