<span class="markdown-body-normal-header">Multi-band RTK evaluation kit
</span>
<br>

<br>
<br>
* GPS/QZSS L1/L2/L5,GLONASS L1/L2
* BDS B1/B2/B3,GALILEO E1/E5A
* Raw measurement output
* RTKLIB-compatible
* Ready for QZSS L6D/E for PPP
* USB-UART interface
* Size: 48mm x 23mm
* Module on board support 12x16mm and 10x10mm


### 1.Overview
<div style="text-align: left;">
<img src="images/evk-3.jpg" style="width: 700px;">
</div>
 - output:NMEA-0183, RTCM3
 - raw data:RTCM3 format(MSM7)
 - default baud rate:115200 bps
 - rates up to 10hz

 
### 2.Operate RTK with rtklib

[**Quick Guide**](rtk-test.md)


<br>
<br>
 
### 3.Order 

  Order No.:
  
 | Item | specifications | Bluetooth | P/N |
 | :--- | :--- | :---: | :---: |
 | Standard RTK | GPS L1/L2,BDS B1/B2,<br>GLO L1/L2 GAL E1 | N | ME-00-00 |
 | Bluetooth <br>RTK receiver | same as above<br>Bluetooth connection<br>RTK status LED | Y | ME-BT-01 |
 | with QZS L6D/E | GPS/QZS L1/L6,BDS B1/B3I,<br>GLO L1OF,GAL E1/E6 | N | ME-00-02 |
 
<br>

<a href="https://www.datagnss.com/products/multi-band-rtk-evk" target="_blank"><img src="images/buy-now.jpg"></a>

<br>
 

### 4.Antenna connector
An SMA female jack is available on the side panel of the evaluation unit for connecting an active  
or passive antenna. The EVK provides the power supply for Antenna power. Use the BIAS switch to select the  
power source. INT_BIAS with recommended maximum output current 20 mA is powered by the module, and  
EXT_BIAS with recommended maximum output current 50 mA is powered by the LDO.

### 5.Power status
The power LED indicates the power status. When the module is powered on, the LED is on.

### 6.Startup with Satrack

<br>
[Satrack download![](../images/zip.png)](firmware/Satrack_client.zip)
<br>

1) Connect the EVK with the antenna and PC. 

2) Launch the Satrack application.

3) Select the corresponding COM port.

4) Set the baud rate if necessary by choosing “Device settings” on strip toolbar. If the port is selected and
the baud rate is set correctly, Satrack program will show the received EVK output on the screen, signal
strength, as well as satellite constellation.

<div style="text-align: left;">
<img src="images/satrack.jpg" style="width: 450px;">
</div>



### 7.Firmware updating

<br>
[Satrack download![](../images/zip.png)](firmware/Satrack_client.zip)
<br>

Find out current version:

"View"-"HD Messages"

![](images/msg-view.png)

![](images/cfg-mon-ver.png)

![](images/ver.png)

#### 7.1 user mode
1) Connect to the EVK through COM ports.

2) Select “HD User Update” from the tool bar, and the file choosing dialog will be shown.

3) Find the file to send and press “Open” to start sending the file and finish firmware updating.

<div style="text-align: left;">
<img src="images/usermode.jpg" style="width: 450px;">
</div>

#### 7.2 boot mode

***Boot mode is only used if the upgrade fails in user mode.***  


1) Connect to the EVK through COM ports.

2) Use the PRRSTX and PRTRG buttons to set the module to enter Boot mode.

3) Disconnect the module first by clicking “DisConnect” from the tool bar and then reconnect the module
again by clicking “Connect” from the tool bar. The module will enter the Boot mode.

4) Select “HD BOOT Update” from the tool bar.

<div style="text-align: left;">
<img src="images/bootmode.jpg" style="width: 450px;">
</div>

5) Find the file to send and press “Open”.

6) Press “Send” to start sending the file and click “Close” to close the updating window after firmware
updating finishes.

7) After firmware updating completed, press RESET button on the EVK to restart the module.


**DO NOT interrupt the file transfer, keep program running and make sure all cables are well connected when
the file is transmitting.** 


### 8.Download the latest firmware<sup>[1]</sup> 

  | Item | GNSS options | firmware<sup>[2]</sup> |
  | ----- | :----- | :----- |
  | Option A | GPS L1/L5,GLO L1,BDS B1/B2a,GAL E1/E5A | [HD9310A.8226](firmware/HD9310A.HDBD.GN3.115200.8226.ec7e2.191014T1.cyfm) |
  | Option B | GPS L1/L2,GLO L1/L2,BDS B1/B2I,GAL E1/E5b | [HD9310B.8226](firmware/HD9310B.HDBD.GN3.115200.8226.ec7e2.191012T1.cyfm) |
  | Option C | GPS/QZSS L1/L2/L6,GLO L1/L2,<br>BDS B1/B3I GAL E1/E6| / |


*[1]If you need other version firmware, please contact <info@datagnss.com>*

*[2]This version is released on Oct.16.2019*