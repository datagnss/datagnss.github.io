<span class="markdown-body-normal-header">RTK evk field test(D9-RTK-receiver)
</span>
<br>

<br>
<br>
![](../images/D9-01.jpg) 

### Requirement

#### Hardware
* RTK EVK(D9) *1
* GNSS antenna*1
* USB cable*1
* GNSS antenna cable*1
* Power bank(optional)

<br>
![Tips](../../d303-docs/images/tips.png)
USB interface is designed for power supply and uart for data communication.
if you connnect this evk to a host-device like computer or SBC device, it will 
work in uart mode.Now usb interface will power supply rtk module and be as a uart
interface, but Bluetooth will not work.

<br>
If you want use it as a Bluetooth rtk receiver, please prepare for a power bank
or any power-only source to power supply this module.

### Quick guide

#### USB mode








#### Bluetooth mode

##### Software


![](../images/sw-map-0.png)

SW Maps is a multi-functional GIS data acquisition software from Nepal,which can 
be used for point, line and polygon data acquisition, and can easily try Google 
Maps/Image Maps, OSM Maps, etc. 

The key is that this software is still licensed for free.
Our Bluetooth mode operation will be based on this software.

There are several ways to get the software, one is to download and install it from
 the google play store, and the other is to download it from our built-in appbus, 
 only the second download will not be the latest version.
 
Steps:
1. Powering your device from the USB port with your power-bank. You'll see the 
power indicator light up.  

2. In your android phone, find Bluetooth setting in system settings, then paired 
this evk. The evk's bluetooth name is like ET10_SPPAAxxxx. The last 4 digits are the 
last 4 digits of a Bluetooth MAC address 
![](../images/sw-d9-1.png)

3. Open SW Maps, 
   - click "Bluetooth GPS"
   - set "u* RTK" as current device 
   - fresh device to find you just paried device (like ET10_SPPAAxxxx) 
   - "connect" 
   
   ![](../images/sw-d9-3.png) 

   ![](../images/sw-d9-5.png)


4. re-click left side bar,you will fina a new menu "NTRIP connection" after rtk receiver 
connected. 

   ![NTRIP connection](../images/sw-d9-6.png) 
 
   ![Config ntrip client](../images/sw-d9-7.png) 

   


[How to choose GNSS antenna for your RTK application?](../../d303-docs/common/choice-of-antenna)

#### Software
Download the latest rtklib from [RTKLIB-2.4.3B33](https://github.com/tomojitakasu/RTKLIB_bin/tree/rtklib_2.4.3/bin)
(current version : 2.4.3B33)

or [demo5 version<sup>[1]</sup>](https://github.com/rtklibexplorer/RTKLIB) 

*<sup>[1]</sup>This version has some special feature for low cost RTK receiver*

**It is recommended to download the following optimized version for this evk.**  

**It is zero configuration for this evk(TAU130x series).**

[demo5 zero configuration version for DATAGNSS](files/rtknavi.zip)

### Operations