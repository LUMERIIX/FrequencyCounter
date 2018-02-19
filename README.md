# FrequencyCounter - The most powerfull DIY FrequnecyCounter
## Introduction
FrequencyCounter is a soft- and hardware project which is a FPGA based FrequencyCounter. The FrequencyCounter is controlled by an GUI Interface ([SigrokLcd](https://github.com/LUMERIIX/SigrokLcd) )on the usb connected Host-PC. A single USB cable for Data and Power supply keeps the construction simple and clean as possible. The GUI is custom-made for this project behind the GUI runs [Sigrok](https://sigrok.org/) a open-source tool for controlling measure devices like frequency counters, multimeters, oscilloscopes etc. The project aims to be a simple, cheap, useful and accurate measure device for everyone. The layout is made in [KiCad]( http://kicad-pcb.org/) a open-source layout tool. The Project is open and everyone is wellcome to work on this project and contribute his extensions and improvements.

## Concept
Comming Soon!

## Hardware
The Hardware is based on a Spartan 6 FPGA which is the heartpiece of the entire circuit. The circuit is reduced to its minimal. The PCB ist a four-layer 1.6mm thick FR4 Board which makes it more expensive but the layout is much cleaner and the signal quality can be increased. The PCB has mounted components on top and bottom site of it. The Mounting on the bottom site is reduced to the minimal to keep it simple an allows also the use without a hosing.<br> 

### Housing
I created a simple and clean plexiglas housing for the PCB which fits the style of the prject very well. The design of the housing is inspired by the [Sick of Beige](http://dangerousprototypes.com/docs/Sick_of_Beige_compatible_cases) cases.<br> 

### Internal Clock Reference
The mouting of the Circuit give you the choice to mout the expensive **OCXO**(Oven Controlled Oscillator) or the way cheaper **VCTCXO**(Voltage Controller Temperatur Compensated Oscillator). In fact of this the precicion of the tool is scalable but I recommend you to mount the cheaper option because the difference in the accuracy is not as much as the price difference. <br>

### Input Circuits
The Input Circuits of each channel are different because not one of them fit in all usage situations.<br> 
The input circuit of **CHA** is realized with an voltage limiter and a HP-Filter at the inlet, followed by a divider (/8) with a HP-Filter and a voltage divider at the output to change the bias point. The change of the bias point is neccessary for the fpga to allow the signal detection.<br>
The most complex incput circuit is the one of the **external reference** (Ext.Ref). The circuit is out of the LTC6957 Datasheet and is often used for reference clocks. The transformator at the inlet make it impossible to use this circuit for both other channels of the FrequencyCounter (frequnecy reasons).<br>
**Channel B** is simpler than the other input ciruits. After the inlet it follows a voltage limiter and a very-fast comparator for edge detecting.<br>
### Communication
Comming Soon!

### Hardware Overview:<br>
<img align="middle" width="1200" height="400" tittle="HardwareBlockDiagramm" src="https://github.com/LUMERIIX/FrequencyCounter/blob/master/Documentation/Images/Hardware_BlockDiagramm.jpg"><br>

## Software
### VHDL
**UART**<br>
The UART component isn't self written it is a adjusted version of the [UART component of Scott Larson](https://eewiki.net/pages/viewpage.action?pageId=59507062) of the eewiki. The component was extended by a Wishbone Interface to fit the projects architecture. The UART interface is used for the communication with the host-pc.<br><br>
**I2C**<br>
The I2C Master Component is also not self written it's base is from [opencores](https://opencores.org/project,i2c?do=projects&download=i2c). The component works fine and it's a big advantage to have a originally wishbone interface included. I2C is in the FrequnecyCounter used to control the DAC wich provides to control voltage for the oscillators.<br><br>
**ZPU**<br>
The [ZPU](https://github.com/zylin/zpu) is a open-source VHDL project from github wich includes a small 32bit CPU. The base ZPU Repo consist of different cores and testbenches but is very confusing. In fact of this I created a fork of the repo and set up a [working base](https://github.com/LUMERIIX/zpu) for the FrequencyCounter Project.<br><br>

**VHDL Abstraction**<br><br>
<img align="middle" width="1200" height="400" tittle="VHDL_Blockdiagramm" src="https://github.com/LUMERIIX/FrequencyCounter/blob/master/Documentation/Images/VHDL_Top_Abstraction.png"><br><br>
**VHDL FrequencyCounter Abstraction**<br><br>
<img align="middle" width="1920" height="680" tittle="VHDL_Blockdiagramm" src="https://github.com/LUMERIIX/FrequencyCounter/blob/master/Documentation/Images/VHDl_FreqCounter_Abstraction.png"><br>
### C-Code
The C-Code is the Programm Code for the implemented VHDL CPU [ZPU](https://github.com/zylin/zpu) or a so called [SOC](https://en.wikipedia.org/wiki/System_on_a_chip)(System-on-a-Chip). The C-Code implements the Protocol for the communication over uart and i2c. The ZPU also controls the entire VHDL Components and handles the data. The Code is obviously written in C and is based on a state-machine. The C-Code is converted in a dualported-RAM (VHDL Component) which is located in the VHDL Project and is connected to the Wishbone-Bus of the ZPU. 

## Get it

```
cd
gedit .bashrc
```
Add following lines:
```
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/ 
export PYTHONPATH=/usr/local/lib64/python2.7/site-packages/
```
Save and Close gedit.<br>
Install dependencies:
```
sudo dnf install gcc-gfortran apr-devel apr-util-devel octave*
sudo dnf update
sudo dnf upgrade
sudo svn git cppunit-devel rabbitvcs*
sudo dnf copr enable jenslody/codeblocks
sudo dnf install codeblocks codeblocks-contrib
sudo dnf install libftdi-devel libusb-devel xterm
sudo dnf install automake libtool autoconf make cmake autoconf-archive pkgconfig glib2-devel libzip-devel check-devel doxygen
sudo dnf install glibmm24-devel python-devel numpy pygobject3-devel swig
sudo dnf install redhat-rpm-config python3-devel qt5 qt5-devel boost-devel
```
Next Install libserialport and the adjusted version of libsigrok:
```
git clone git://sigrok.org/libserialport
cd /libserialport
./autogen.sh 
./configure
make
sudo make install

git clone https://github.com/LUMERIIX/libsigrok_FreqCount
cd libsigrok_FreqCount
./autogen.sh
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/ ./configure 
make -j4
sudo PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/ PYTHONPATH=/usr/local/lib64/python2.7/site-packages/ make install
```
Download the FrequencyCounter Repo:
```
git clone https://github.com/LUMERIIX/FrequencyCounter
cd FrequencyCounter 
```
***Optional*** Download the fork of the ZPU Repo to have all source files 
```
cd
git clone https://github.com/LUMERIIX/zpu
```
The source files are located under
```
cd zpu/zpu/hdl/zpu4
```
Next Install openocd for flashing the bitstream:
```
sudo dnf install git libtool autoconf texinfo libusb-dev
sudo dnf install libftdi
cd
git clone git://git.code.sf.net/p/openocd/code
cd ~/openocd
./bootstrap
./configure --enable-maintainer-mode --disable-werror --enable-ftdi
make
sudo make install
```
Create Directory for Config files of Openocd
```
cd ~
mkdir openocd-bin
cd ~/openocd/tcl
cp -r * ~/openocd-bin
cd ../src
cp openocd ~/openocd-bin
```
Add the Interface Config file for the FT2232
```
cd 
cp FrequnecyCounter/openocd/ft2232-jtag.cfg openocd-bin/interface/ftdi
```
Download [SigrokLcd](https://github.com/LUMERIIX/SigrokLcd) or [SigrokCLI](https://sigrok.org/wiki/Linux)


## How to use it
The actual bitstream you find under /bitstream:
```
cd
cd /FrequnecyCounter/bitstream
```
