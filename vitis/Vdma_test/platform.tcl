# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Vivado_Projects\zed_hdmi\vitis\Vdma_test\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Vivado_Projects\zed_hdmi\vitis\Vdma_test\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Vdma_test}\
-hw {C:\Vivado_Projects\zed_hdmi\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Vivado_Projects/zed_hdmi/vitis}

platform write
platform generate -domains 
platform active {Vdma_test}
platform generate
bsp reload
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
bsp reload
platform generate
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform clean
platform clean
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform clean
platform generate
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform active {Vdma_test}
bsp reload
platform generate -domains 
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform clean
platform clean
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform clean
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains standalone_domain,zynq_fsbl 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains standalone_domain,zynq_fsbl 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform generate -domains standalone_domain,zynq_fsbl 
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
platform generate -domains 
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains standalone_domain,zynq_fsbl 
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform active {Vdma_test}
platform config -updatehw {C:/Vivado_Projects/zed_hdmi/design_1_wrapper.xsa}
platform generate -domains 
platform generate -domains standalone_domain 
platform generate -domains standalone_domain 
