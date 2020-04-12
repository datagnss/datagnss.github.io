<span class="markdown-body-normal-header">RTK evk field test(D9-RTK-receiver)
</span>
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

If you want use it as a Bluetooth rtk receiver, please prepare for a power bank
or any power-only source to power supply this module.

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