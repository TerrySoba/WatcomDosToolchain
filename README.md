# Open Watcom C++ Toolchain for DOS

This project contains a simple development chain for cross development of 16bit DOS applications using Linux.

The toolchain contains the following applications:
 * [Open Watcom v2](https://github.com/open-watcom/open-watcom-v2)
 * GNU Make

Using the toolchain it is possible to develop 16bit DOS applications that can run even on Intel 8086/8088 PCs running DOS.

> ⚠️ Applications developed using this toolchain will not natively work on modern Windows machines.

## Prerequisites
 
 * Linux (x86-64)
 * Docker
 * Dosbox (to run built applications on Linux machine)

## Quick Start

Clone this repository:
~~~
git clone https://github.com/TerrySoba/WatcomDosToolchain.git
~~~

Then change to the cloned directory and run *build.sh*:
~~~
cd WatcomDosToolchain
./build.sh
~~~

This should have built an executable called *main.exe* in the *source* directory.

We'll use Dosbox to test the executable on Linux:
~~~
dosbox source/main.exe
~~~

This should open a new windows. in the windows you should see the message "Built using Open Watcom!".


## Troubleshooting

If the *build.sh* command failed, this might be because Docker is not correctly installed. On Debian based systems you may install Docker using the following command line:
~~~
sudo apt install docker.io
~~~

It it still does not work, then try starting the *build.sh* script using sudo:
~~~
sudo ./build.sh
~~~
