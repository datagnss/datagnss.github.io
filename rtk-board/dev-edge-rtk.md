<span class="markdown-body-normal-header">Dev-Edge-RTK user manual
</span>
<br>

<br>
![](../images/tau1312-evk/dev-edge-rtk.png) 
<br>



DEV-EDGE-1302基于华硕工业级ARM平台——Tinkerboard EDGE R开发的RTK测试评估套件，具有6核心的高性能处理器，
并整合了Rockchip NPU，可以方便的进行机器学习，AI加速。区别于普通的ARM单板系统，EDGE R具有板载eMMC加载
系统，稳定、高速和可靠。支援Linux与Android系统。同时，EDGE R采用工业级宽电压设计，支持12-19V DC电源输
入，稳定的电压和电源保护设计，可以让系统稳定作业并发挥完整的效能。




DEV-EDGE-1302 通过mini PCIe接口，内置Allystar TAU1302高精度GNSS模组，TAU1302支持1/2/5/10Hz 的原始观测量
输出，支援RTCM3.2 MSM4和MSM7数据输出，可以非常方便高效的进行高精度 RTK 定位及定向。




DEV-EDGE-1302 内置针对ARM64位平台优化的RTK算法，支持最高10Hz RTK解算及定向，是最佳的“开箱即用”开发套件，
可以快速的帮你评估 TAU1302模组和适合自主研发产品的RTK高精度算法。



### 产品清单
* Tinkerboard Edge-R
* 电源适配器，12V/3A
* DM-1302-P1,mini PCIe (已装在主板上)
* 双频段WiFi模组（已装在主板上）

### 产品规格
![](../images/tau1312-evk/edge-rtk-specs-0.png)


![](../images/tau1312-evk/edge-rtk-specs-1.png)

**Both USB and 2pins support power in, only choose one**

**USB plugged in the computer's USB port may not work**

### Connectivity
* WiFi (2.4G b/g),connect WiFi to fetch RTCM data from remote NTRIP caster or upload RTCM data to NTRIP caster
* Bluetooth (2.1 EDR+4.0),output NMEA or RTCM data
* UART/USB-UART, output NMEA/RAW-DATA
* Radio(800-2000m,3DR compatible)


### Quick guide
<br>
![Tips](../../d303-docs/images/tips.png)

#### Power
1.Connect usb interface to USB adapter or Power bank.
the Current must exceed 300mA.

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

![](../images/Y-RTK-2-NTRIP.png)

Please "Submit" to save the configuration.

Then the device will reboot to apply the new configuration.

In the next, you only need power on the device,
It will work properly. 

#### Android app for test
Download app from the following url:

[blueGNSS](https://github.com/datagnss/datagnss.github.io/releases/download/0.9/blueGNSS.apk)

1.Paired BT in your phone. (BT name:ET10_SPP......)

2.open app, choose the paired BT in the preference

3.start or stop connection

4.tap "start" in logging to log nmea data


![](../images/blueGNSS-1.jpeg)
![](../images/blueGNSS-2.jpeg)
![](../images/blueGNSS-3.jpeg)

 
#### Output NMEA to other devices
6pins UART connector support output NMEA data.
the 6pins definition is printed near connector.

6pins connector specification:
Pitch 1.25mm BAR Connectors
   
   
   
<br>
<br>
### Related link  
 [How to choose GNSS antenna for your RTK application?](../../d303-docs/common/choice-of-antenna) 

 
 [Where to place your receiver in field?](../../d303-docs/common/about-rtk/#where-to-place-your-rtk-receiver) 

 
 [AT400 COST-EFFECTIVE MULTI-BAND ANTENNA FOR RTK](https://www.datagnss.com/products/at400-multi-band-antenna-for-rtk) 
 
 
 [D30x Handheld RTK receiver](../../d303-docs/)



