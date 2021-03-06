# Transform 300 MHz HLS kernel to 500 MHz RTL kernel

## Original project

Xilinx has a step-by-step guide on how to create an accelerating kernel for an Alveo board.

 https://github.com/Xilinx/Vitis-Tutorials/tree/master/Hardware_Accelerators/Design_Tutorials/01-convolution-tutorial

There are several steps:
* baseline
* fixedpint
* **dataflow**  - base for current project
* multicore
* qdma

The main acceleration function is video convolution.

![video](./doc/video.png)

* resolution: 1920x1080
* 132 frames 

## RTL kernel structure 

![struct](./doc/struct.png)

* Vitis-HLS - original kernel
* A1 - fsm component for translate control signal from 300 MHz to 500 MHz
* inFrame, outFrame, coefficint - AXI interconnect from 32bit/500MHz to 64bit/300MHz
* SLAVE AXI-LITE - component for decode function parameters and execution control


## Results

* [system_view](./doc/system_view.md) 
* [application timeline](./doc/application_timeline.md)
* [console_output](./doc/console_output.md)
* [fpga_utilization](./doc/fpga_utilisation.md)

## Directories
### top directory
* doc - documentation
* lab - place for laboratory 
* reference - source code for laboratory
### reference directory
* conv_01 - source code for HLS project
* conv_rtl - source code for RTL kernel
* convolution_rtl_01 - source code for Vitis application project
* hw_link - additional files for HW Link
* project_ip - additional IP Core
* golden_data - results

## Instructions

* [Create HLS project](./doc/create_hls.md) 
* [Create Vitis application project](./doc/create_app_project.md) 
* [Create RTL kernel](./doc/create_rtl.md) 
* [Create application project](./doc/create_app_project.md) 
* [Create HW-Link project](./doc/create_hw_link.md) 
* [Build system project](./doc/build_system_project.md) 
* [Run example](./doc/run_example.md) 

## Contact

Dmitry Smekhov  dsmekhov@plis2.ru
