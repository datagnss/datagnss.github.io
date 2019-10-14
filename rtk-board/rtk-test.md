<span class="markdown-body-normal-header">RTK evk field test with rtklib
</span>
<br>


![](images/rtk-test.png)

### Requirement

#### Hardware
* rtk evk *2
* GNSS antenna*2
* micro USB cable*2
* RF cable*2

#### Software
Download the latest rtklib from [RTKLIB-2.4.3B33](https://github.com/tomojitakasu/RTKLIB_bin/tree/rtklib_2.4.3/bin)
(current version:2.4.3B33)

or [demo5 version](https://github.com/rtklibexplorer/RTKLIB) 

*This version has some special feature for low cost RTK receiver*

### Operations

#### Base station setup

1.Connect your rtk evk to Laptop via usb port.

<br>
2.The computer will install the usb driver automaticlly if this is the first connection. It will popup a tips tell you finish this setup about 1-3 minutes later.
if not, you could download the driver and install it by yourself.  [CP210x driver](files/CP210x_VCP_Windows.rar)

<br>
3.Find your com port number like Com3 in device manager or ignore this step.

<br>
4.run strsvr (a powerful stream utility of rtklib), then choose the input stream type to **"Serial"** , then click opt "...", find com port of the EVK.

![](images/strsvr.png)

![](images/strsvr-1.png)

Baud rate: **115200**

<br>
5.Then click the cmd button (right side of opts button) to load cmds file for EVK.

![](images/strsvr-cmds.png)

Please download command files:
[HD9310-5Hz-GGB.cmd](files/9310_5Hz_good.cmd)

<br>
6.Choose the output stream No 1 type to NTRIP server. Then input parameters like the following image:

![](images/strsvr-2.png)

You could input the mountpoint whatever you want, but the best is it is a special string for you.

Password: ******** (inqury it by sending email to info@datagnss.com )

<br>
7.Then click Conv button in this output stream:

check the checkbox of "Conversioning from..."

![](images/strsvr-conv.png)

input Message type:
1005(5),1077(1),1087(1),1097(1),1127(1)

<br>
8.Then click the Options button in the main UI.

![](images/strsvr-opts.png)

input your coordinate of base station, then check "Station ID".

<br>
9.Now,you could press start button to begin uploading base station's raw data to NTRIP caster.

you could check if the data is correct via the data monitor.

click the small button **"Stream Monitor"** to open data monitor window.

![](images/strsvr-mon.png)

![](images/strsvr-data.png)

And also check the coordinate from RTCM1005 is the same one you input.


#### Rover setup

1.Run RTKNavi.

<br>
2.Config Input Stream 

**output raw data format:RTCM3**

**default baud rate:115200 bps**

<div style="text-align: left;">
<img src="../images/rtklib-1.png" style="width: 550px;border:1px solid rgb(200,200,200);">
</div>

<div style="text-align: left;">
<img src="../images/rtklib-2.png" style="width: 550px;border:1px solid rgb(200,200,200);">
</div>

<br>
press "Cmd" button, load cmd from the following cmd file:
<br>
[cmds for HD9310](../files/9310_5Hz_good.cmd)
<br>
<br>

config base station stream:

<div style="text-align: left;">
<img src="../images/rtklib-inpstr2.png" style="width: 550px;border:1px solid rgb(200,200,200);">
</div>


<br>
3.Config rtk processing options
<div style="text-align: left;">
<img src="../images/rtklib-4.png" style="width: 550px;border:1px solid rgb(200,200,200);">
</div>

<div style="text-align: left;">
<img src="../images/rtklib-5.png" style="width: 550px;border:1px solid rgb(200,200,200);">
</div>

<br>
4.Do rtk positioning.
<div style="text-align: left;">
<img src="../images/rtklib-6.png" style="width: 550px;border:1px solid rgb(200,200,200);">
</div>

<div style="text-align: left;">
<img src="../images/rtklib-7.png" style="width: 650px;border:1px solid rgb(200,200,200);">
</div>

