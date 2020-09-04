<span class="markdown-body-normal-header">RTK evk field test(D9-RTK-receiver)
</span>
<br>

<br>
<br>
![](../images/Y-RTK.png) 

(LED indicator: Power-Bluetooth-Charge-Standby, left to right above)

### Requirement

#### Hardware
* RTK EVK(D9) *1
* GNSS antenna*1
* USB cable*1
* GNSS antenna cable*1
* Power bank(optional)

#### Software
* rtklib (USB mode)
* SW Maps (Bluetooth mode)


<br>
![Tips](../../d303-docs/images/tips.png)
USB interface is designed for power supply and uart for data communication.
if you connnect this evk to a host-device like computer or SBC device, it will 
work in uart mode.Now usb interface will power supply rtk module and be as a uart
interface, but Bluetooth will not work.

<br>
If you want use it as a Bluetooth rtk receiver, please prepare for a power bank
or any power-only source to power supply this module.


### USB UART mode

<br>
![D9 USB Mode](../images/d9-usb.png)

![D9 EVK stream flow chart](../images/d9-strsvr.png)
  
<br>
#### 1.prepare for software

  ![](../images/str-d9.png)
   
  Please download rtklib, we will use it to perform our evk test.

  As a part of rtklib, strsvr is a powerful stream server utility.
<br>

 
#### 2.strsvr instance 1

  get data from uart output to tcp server for rtk correction and 3rd part app 
   
  connect evk to computer via usb port,config serial port parameters.
   
   
  ![](../images/str-1.png) 
   
  ![](../images/str-2.png)
   
  ![](../images/str-3.png) 

  
#### 3.strsvr instance 2

  get RTCM data from VRS/Base station via NTRIP client,then feed to tcp server
  
  ![](../images/str-4.png)

#### 4.the 3rd party APP

  get RTK solution from tcp server by NMEA-0183 protocol.
  
  


<br>
<br>
### Bluetooth mode

**We recommend using SW Maps to test the bluetooth mode.**


![](../images/sw-map-0.png)

SW Maps is a multi-functional GIS data acquisition software from Nepal,which can be used for point, line and polygon data acquisition, and can easily try Google Maps/Image Maps, OSM Maps, etc. 

The key is that this software is still licensed for free.
Our Bluetooth mode operation will be based on this software.

There are several ways to get the software, one is to download and install it from the google play store, and the other is to download it from our built-in appbus, only the second download will not be the latest version.
 
#### Steps

1. Powering your device from the USB port with your power-bank. You'll see the power indicator light up.  

2. In your android phone, find Bluetooth setting in system settings, then paired this evk. The evk's bluetooth name is like ET10_SPPAAxxxx. The last 4 digits are the last 4 digits of a Bluetooth MAC address 

   ![](../images/sw-d9-1.png)

3. Open SW Maps, 
   - click "Bluetooth GPS"
   - set "u* RTK" as current device 
   - fresh device to find you just paried device (like ET10_SPPAAxxxx) 
   - "connect" 
   
   ![](../images/sw-d9-3.png)  ![](../images/sw-d9-5.png)


4. re-click left side bar,you will fina a new menu "NTRIP connection" after rtk receiver connected. 

   ![NTRIP connection](../images/sw-d9-6.png)  ![Config ntrip client](../images/sw-d9-7.png) 

   


   
   
   
<br>
<br>
### Related link  
 [How to choose GNSS antenna for your RTK application?](../../d303-docs/common/choice-of-antenna) 

 
 [Where to place your receiver in field?](../../d303-docs/common/about-rtk/#where-to-place-your-rtk-receiver) 

 
 [AT400 COST-EFFECTIVE MULTI-BAND ANTENNA FOR RTK](https://www.datagnss.com/products/at400-multi-band-antenna-for-rtk) 
 
 
 [D30x Handheld RTK receiver](../../d303-docs/)



