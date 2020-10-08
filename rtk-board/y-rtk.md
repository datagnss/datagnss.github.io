<span class="markdown-body-normal-header">WiFi RTK receiver field test(Y-RTK receiver)
</span>
<br>

<br>
<br>
![](../images/Y-RTK-1.png) 


### Hardware
* USB, only for power supply
* 2pins connector,power supply
* 6pins connector,UART and Power out for connected device
* SMA Antenna connector
* RTK module
* ESP32 WiFi module
* Bluetooth module(rear side)

**Both USB and 2pins support power in, only choose one**

### Connectivity
* WiFi (2.4G b/g),connect WiFi to fetch RTCM data from remote NTRIP caster.
* Bluetooth (2.1 EDR+4.0),output NMEA
* UART, output NMEA to other device


### Quick guide
<br>
![Tips](../../d303-docs/images/tips.png)
USB interface is designed for power supply only.

#### Power
1.Connect usb interface to USB adapter or Power bank.
the Current must be more than 300mA.

2.the Power LED red light will be on.

#### WiFi connection
1.The device will create a WiFi AP, the SSID: YRTK-XXXXXX.
"XXXXXX" is the last 6 digits of MAC address.

2.Connect this WiFi in your phone or Laptop, then open the http://192.168.4.1 in Chrome or Safari.

3.Press "Scan" to find your local WiFi or the hotspot created from your Phone.

![](../images/Y-RTK-2-AP.png)

above "192.168.xx.xx" is your new IP address, please remember it.

#### NTRIP client information
1. Please config the NTRIP client account.
2. if your reference station is VRS, please config NMEA relay back.

#### Android app for test
[blueGNSS](https://github.com/datagnss/datagnss.github.io/releases/download/0.9/blueGNSS.apk)

![](../images/blueGNSS-1.jpeg)
![](../images/blueGNSS-2.jpeg)
![](../images/blueGNSS-3.jpeg)

 
  





   
   
   
<br>
<br>
### Related link  
 [How to choose GNSS antenna for your RTK application?](../../d303-docs/common/choice-of-antenna) 

 
 [Where to place your receiver in field?](../../d303-docs/common/about-rtk/#where-to-place-your-rtk-receiver) 

 
 [AT400 COST-EFFECTIVE MULTI-BAND ANTENNA FOR RTK](https://www.datagnss.com/products/at400-multi-band-antenna-for-rtk) 
 
 
 [D30x Handheld RTK receiver](../../d303-docs/)



