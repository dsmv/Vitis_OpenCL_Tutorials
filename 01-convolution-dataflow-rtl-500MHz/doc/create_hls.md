# Create HLS project


* open terminal
* setup environment : source /tools/Xilinx/Vitis/2020.2/settings64.sh 
* launch :           vitis_hls &
* launch "Create Project"
* enter project name  __conv_01__
* enter location:  __<path>/lab/wsp_hls__

![new_hls_project](./new_hls_project.png)

* Page add source - skip
* Page add testbecnh - skip
* Page setup solution:
* Period: 2
* Uncertainty: 1%
* Part: Alveo U200
* Flow Target: Vivado IP Flow Target

![add_hls_project](./hls_setup_solution.png)

* copy files from  <path>/reference/conv_01/* to <path>/lab/wsp_hls/conv_01
* add source files via contex menu of "Source", add all files from <path>/lab/wsp_hls/conv_01/src
![hls_add_files](./hls_add_files.png)
* add testbecnh files via contex menu of "Test Becnh", add all files from <path>/lab/wsp_hls/conv_01/testbench
* setup convolve_fpga as top function in "Project/Setting/Synthesis"
![hls_setup_synthesis](./hls_setup_synthesis.png)
* run synthesis
* export rtl: "Solution/Export RTL", enter output location: <path>/lab/project_ip/convolve_fpga
![hls_export_rtl](./hls_export_rtl.png)
* unzip <path>/lab/project_ip/convolve_fpga/convolve_fpga.zip


* Next step:  [Create Vitis application project](./create_app_project.md) 
