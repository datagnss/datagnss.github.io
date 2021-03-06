<span id="dev_docs" class="markdown-body-normal-header">Developer Manual
</span>
<br>
<br>
Welcome to choose D300 series Android RTK receiver!

<div style="text-align:left;"><img src="../images/s-mobile.jpg" width="450"></div>

 - D303 and D302 comparison

 | Items | D303 multi-freq | D302 single-freq |
 | :---- | :----: | :----: |
 | constellation | GPS/QZSS L1/L2,BDS B1/B2,GLO L1/L2,GAL E1 | GPS L1,GLO L1,BDS B1,GAL E1 |
 | RTK initial | 10s | 120s |
 
<br>
<br>
<span id="1"></span>
## 1.RTK+ service Intro

RTK+ service is a core service integrated in android on D300 series RTK receiver.

RTK+ can configure the following options:

- GNSS constellation type,GPS/GLONASS/GALILEO/BDS
- VRS/CORS base station ntrip/tcp protocol setting
- Receiver mode setting
- rtk engine optimized setting
- output solution setting
- log data stream setting

![](images/1-1.png){: style="width: 250px;border:1px solid rgb(200,200,200);"}
![](images/1-2.png){: style="width: 250px;border:1px solid rgb(200,200,200);"}

![](images/1-3.png){: style="width: 250px;border:1px solid rgb(200,200,200);"}
![](images/1-4.png){: style="width: 250px;border:1px solid rgb(200,200,200);"}

![](images/1-5.png){: style="width: 250px;border:1px solid rgb(200,200,200);"}
![](images/1-6.png){: style="width: 250px;border:1px solid rgb(200,200,200);"}

<span id="2"></span>
## 2.Intent service

RTK+ provide an intent service, so third party software can launch rtk+ setting pages from its own main UI.

This allow an easy integration without open rtk+ from system setting section.

![](images/2-1.png){: style="width: 250px;border:1px solid rgb(200,200,200);"}

Please reference the following way:
```java
Intent intent = new Intent();

intent.setClassName("com.datagnss.rtkgui","com.datagnss.rtkgui.ui.MainActivity");

try {
      startActivity(intent);
} catch (Exception e) {
   e.printStackTrace();
}
```

<span id="3"></span>
## 3.Location service extra data

RTK+  adds a set of location extra information while it&#39;s running. Details on location extras can be found in the corresponding [Google Android help](https://developer.android.com/reference/android/location/package-summary.html).

![](images/3-1.png)

**Extra data description:**

| Key | type | Details |
| --- | --- | --- |
| hdop | float | HDOP value |
| vdop | float | VDOP value |
| pdop | float | PDOP value |
| diffAge | float | Message age of any RTK message in seconds |
| diffRatio | double | RTK ambiguity resolution,ratio |
| diffStatus | int | Position solution status: 1=Autonomous, 2=DGPS, 4=Fixed, 5=Float |
| vrms | float | Vertical accuracy (RMS) in meters |
| hrms | float | Horizontal accuracy (RMS) in meters |
| speed | float | speed, m/s |
| bearing | float | bearing,degree |
| receiverModel | string | Receiver model string,here is D302-RTK |
| mockProvider | string | Mock location provider string,here is DATAGNSS RTK+ |
| utcTime | long | UTC time,millisecond,from Jan 1,1970 |
| AccuracyEstimated | int | accuracy grade estimated,0-none,1-centimeter grade,2-submeter grade,3:1-3m grade,4:\&gt;3m grade |
| satellitesUsed | int | Number of satellites used for rtk |
| satellitesView | int | Number of satellites in view |
| satellitesId | int[] | Array containing IDs of satellites in view. The number of elements in the array is indicated by the satellitesView data specified above. |
| satellitesElv | int[] | Array containing elevation angles of satellites in view expressed in rad. The number of elements in the array is indicated by the satellitesView data specified above. Satellite elevations are stored in the same order as their IDs in the satellitesId array specified above. |
| satellitesAzm | double[] | Array containing azimuth angles of satellites in view expressed in rad. The number of elements in the array is indicated by the satellitesView data specified above. Satellite azimuth angles are stored in the same order as their IDs in the satellitesId array specified above. |
| satellitesSnr | double[] | Array containing signal-to-noise ratio (SNR) values for the satellites in view. The number of elements in the array is indicated by the satellitesView data specified above. SNR values are stored in the same order as the corresponding satellite IDs in the satellitesId array specified above. |
| satellitesUse | boolean[] | Array of flags indicating if a particular satellite has been used in a rtk position computation. The number of elements in the array is indicated by the satellitesView data specified above. The flags are stored in the same order as the corresponding satellite IDs in the satellitesId array specified above. |


<span id="4"></span>
## 4.Input and Output stream

RTK+ service provide the following stream:

- NMEA-0183 data output via Android Location Service

 * GGA

 * GSA

 * GSV

 * GST

Please refer to Android developer guide:

Public methods
abstract void	onNmeaReceived(long timestamp, String nmea)

[GpsStatus.NmeaListener](https://developer.android.com/reference/android/location/GpsStatus.NmeaListener)

Some special RTK data like accuracy, RTK state, HRMS/VRS etc. please refer above extra data list.


<span id="5"></span>
## 5.How to access rtk module in your App

two steps:

user need switch on receiver in RTKGUI app.

you must integrate the following code in your app.

1.Power on rtk module

```java
private static final String ACTION_RUN_CMD_CPUBOOST_START = "com.datagnss.receiver.CPUBOOST.start";
private static final String ACTION_RUN_CMD_CPUBOOST_STOP = "com.datagnss.receiver.CPUBOOST.stop";
private static final String RTKGUI_PKG_NAME = "com.datagnss.rtkgui";

Intent intent = new Intent(ACTION_RUN_CMD_CPUBOOST_START);
intent.setPackage(RTKGUI_PKG_NAME);
startService(intent);
```

2.create tcp client connect localhost:52001

3.Power off rtk module

before close your app, you need power off rtk module

```java
Intent intent = new Intent(ACTION_RUN_CMD_CPUBOOST_STOP);
intent.setPackage(RTKGUI_PKG_NAME);
startService(intent);
```

<span id="6"></span>
## 6.Sample Screenshot from Partner

MapIt GIS App is an affordable field gis data collector software.

It fully supports D302/303 rtk+ service.

**Mapit Pro is preinstalled on each D303 receiver.**

Google play download from [Mapit GIS](https://play.google.com/store/apps/details?id=com.osedok.gisdatacollector&amp;hl=en).

![](images/a-1.jpg){: style="width: 250px;border:1px solid rgb(200,200,200);"}
![](images/a-2.jpg){: style="width: 250px;border:1px solid rgb(200,200,200);"}

![](images/a-3.jpg){: style="width: 250px;border:1px solid rgb(200,200,200);"}
![](images/a-4.png){: style="width: 250px;border:1px solid rgb(200,200,200);"}


<span id="7"></span>
## 7.Change logs
- 2019-01-30 add projection coordinate to extra data structure, proj\_a/proj\_b/proj\_c

- 2019-11-15 
  revert"add projection coordinate output in extra data"  
  
  remove output stream support for nmea and other data output
			 

<br>
<br>
2019.10 Ver 1.1.0 updated:2019-11-15

