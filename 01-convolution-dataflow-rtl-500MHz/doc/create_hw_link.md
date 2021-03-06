# Create HW-Link project
* Select convolution_rtl_01_system_hw_link.prj; You must see binary_container_1 and conv_rtl function in the project page. If you don't see its then add kernel function in the kernels project.

![hw_project_page](./hw_project_page.png)

* Select convolution_rtl_01_system_hw_link project. Select "Import Source" in the context menu. Select 'repo_path'/reference/hw_lonk as source direcory and 
![hw_import](./hw_import.png)

You must see freq.ini and options.txt in the hw_link projects.

* Open options.txt file. Change option --user_ip_repo_path. You need set path to 'repo_path'/lab/project_ip directory

* Select "Hardware" for Active build configuration in the hw_link project page.

* Select binary_container_1 in the project page and select "Edit V++ Options" in the context menu. Fill line option from the options.txt file
![hw_edit_options](./hw_edit_options.png)

* Select "Build project" in the context menu for hw_link project. The binary_container_1.xclbin has been created. It takes several hours.

* After buiild you can see such message in the console:

![hw_console](./hw_console.png)

* Open file "binary_container_1.xclbin.info in the convolution_rtl_01_system_hw_link/Hardware. Check values for clock:

![hw_clock_info](./hw_clock_info.png)

The values for clock must be 300 MHz and 500 MHz. It is very important.

* Next step [Build system project](./build_system_project.md) 