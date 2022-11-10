<span class="markdown-body-normal-header">RTK evk for TAU1312 test
</span>
<br>

<br>
<br>

### Requirement

#### Hardware
* RTK EVK(TAU1312) *1
* GNSS antenna*1
* USB cable*1
* GNSS antenna cable*1
* Power bank(optional)

#### Software
* rtklib 
* Satrack 


<br>
![Tips](../../d303-docs/images/tips.png)


<br>

### Specifications
- support 1/2/5Hz for rtk output rate
- support 1/2/4/10Hz for standalone output rate
- support rtk rover mode and base mode

### Test evk with Satrack
![Satrack](../images/tau1312-evk/main.png)


<br>
![Tips](../../d303-docs/images/tips.png)
TAU1312 support the following working mode:
- GN_DGNSS_NONE
- GN_DGNSS_SBAS
- GN_DGNSS_RTD
- GN_DGNSS_RTK_FLTINT
- GN_DGNSS_RTK_FIXINT


### Standalone mode

#### 1. set to standalone mode

![set DGNSS to none](../images/tau1312-evk-cfg-dgnss.png)

#### 2. set PVT output rate
![set output rate](../images/tau1312-evk/set-output-rate.png)


Note: set the "Update period" to
- 1000ms for 1Hz
- 500ms  for 2Hz
- 200ms  for 5Hz
- 100ms  for 10Hz

<br>
![Tips](../../d303-docs/images/tips.png)
For TAU1312, support 1/2/5/10Hz in standalone mode.

### RTK mode [GN_DGNSS_RTK_FIXINT]

#### 1. set to RTK mode


![set DGNSS to RTK](../images/tau1312-evk/set-dgnss-mode-rtk.png)

#### 2. set RTK output rate [PVT,NMEA]

![set output rate](../images/tau1312-evk/set-output-rate.png)


Note: set the "Update period" to
- 1000ms for 1Hz
- 500ms  for 2Hz
- 200ms  for 5Hz

<br>
![Tips](../../d303-docs/images/tips.png)
For TAU1312, support 1/2/5Hz in RTK mode.

#### 3. RTK base station
set evk as a base staion, you need set the evk to output RTCM data:
- Type 1005 (base station position)
- Type 1077/1087/1097/1107/1117/1127 (raw data, MSM7)

<br>
![Tips](../../d303-docs/images/tips.png)
To reduce the amount of data, we could set the RTCM to MSM4.

##### 1.set output rate to 1Hz
![set output rate](../images/tau1312-evk/set-output-rate.png)

##### 2.set NMEA output off
![NMEA off](../images/tau1312-evk/nmea-off.png)


##### 3.set RTCM output on
![RTCM on](../images/tau1312-evk/set-base-rtcm-output.png)

##### 4.set fixed position for base station
![set fixed position for base staion](../images/tau1312-evk/set-base-fixed-pos.png)
- CFG-FIXEDECEF
- If you have the known position for base station, please input the three value XYZ. 
- Otherwise, press "GetNow" to fill the XYZ field
- Then Press "Send" button

After above operation, you will see the following 1005 with the fixed base position.

![Check RTCM type 1005 with the fixed pos](../images/tau1312-evk/set-rtcm-1005-fixed-pos.png)

### Save config

![Tips](../../d303-docs/images/tips.png)
Save config to keep the configuration available in the next power boot.

![Save config](../images/tau1312-evk/save-config.png)



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

   

### Base station mode

For D9 evk, it could be configured as base station.

Please send the following command to evk via bluetooth or uart com port:

1. close NMEA output
   `$cfgprt,,,,4;cfgsave,`
2. output RTCM message
   `$cfgmsg,2,1074,1;cfgmsg,2,1084,1; cfgmsg,2,1114,1;cfgmsg,2,1124,1;cfgsave,`
3. output RTCM 1005 message
   `$cfgmsg,2,1005,1;cfgsave,`
4. config base station position(lat,lon,alt)
   `$cfgtpm,1,,lat,lon,alt;cfgsave,`

   

<br>
<br>
### Related link  
 [How to choose GNSS antenna for your RTK application?](../../d303-docs/common/choice-of-antenna) 


 [Where to place your receiver in field?](../../d303-docs/common/about-rtk/#where-to-place-your-rtk-receiver) 


 [AT400 COST-EFFECTIVE MULTI-BAND ANTENNA FOR RTK](https://www.datagnss.com/products/at400-multi-band-antenna-for-rtk) 


 [D30x Handheld RTK receiver](../../d303-docs/)



