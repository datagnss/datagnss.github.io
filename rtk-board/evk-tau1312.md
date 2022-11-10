<span class="markdown-body-normal-header">TAU1312 evk evaluation guide
</span>
<br>

<br>
<br>
## Test EVK-TAU1312 with Satrack

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
To reduce the amount of data, you could set the RTCM data from MSM7 to MSM4.

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

Press "Send" button to save it.
Sometimes if the data update rate is too high, you need press button several times.


## Test EVK-TAU1312 with 3rd party utilities

- [str2str](../files/strsvr.zip), a powerful utility for stream application
- [rtkplot](../files/rtkplot.zip), a powerful plot utility

above two utilities is the part of the famous RTKLIB.
if you want the full experience test, please download RTKLIB from [rtklib official website](https://www.rtklib.com)

Step by step:

(TODO) coming soon...


<br>
<br>
### Related link  
 [How to choose GNSS antenna for your RTK application?](../../d303-docs/common/choice-of-antenna) 


 [Where to place your receiver in field?](../../d303-docs/common/about-rtk/#where-to-place-your-rtk-receiver) 


 [AT400 COST-EFFECTIVE MULTI-BAND ANTENNA FOR RTK](https://www.datagnss.com/products/at400-multi-band-antenna-for-rtk) 


 [D30x Handheld RTK receiver](../../d303-docs/)



