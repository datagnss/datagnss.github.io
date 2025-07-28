# Base station setup

For base staion, it need output raw measurement data and fixed coordiantes.

Usually it can be raw data in RTCM format, which is the most common. 
The RTCM format includes MSMx types, where x ranges from 1 to 7, representing different contents. 

MSM4 or MSM7 are commonly used, with MSM4 being the most efficient and MSM7 containing the highest amount of data for better RTK performance.

Our receiver supports both '''MSM4 and MSM7 formats for Rover'''.
For Base stations, the output is in '''MSM7 format'''.

## 0. Config Receiver by config file [Recommend]

Satrack supports sending command files to the module for a series of configurations. Below, we will introduce this method:

Connect the [NANO RTK Receiver](../gnss/rtk_receiver/NANO/nano-rtk-receiver.md) to your Laptop via USB.

Before proceeding, you need to download the configuration command file.

| Mode     | Description | Configuration File Link                                      |
|-------------------------|-------------|-------------------------------------------------------------|
| Base mode        | 1Hz,RTCM MSM7 data, RTCM 1005 Message | [Config Base mode](../assets/config/config_base.cmd)        |
| Rover mode       | 5Hz, GGA/GSA/RMC/VTG/ZDA/GST 5Hz, GSV 1Hz | [Config Rover mode,5Hz](../assets/config/config_rover_5hz.cmd)      |
| Raw data mode    | 1Hz, RTCM MSM7 data, RTCM EPHEM data | [Config output raw data mode](../assets/config/config_raw.cmd) |
| Raw data mode    | 5Hz, RTCM MSM7 data, RTCM EPHEM data | [Config output raw data mode,5Hz](../assets/config/config_raw_5hz.cmd) |



1. Open Satrack, then choose the menu Tools - Send Command.
![satrack-tools-send_cmd](/images/common/send-cmd-file.png)

2. Click Button Open, then choose the config file you downloaded.
![satrack-tools-send_cmd_send](/images/common/send-cmd-file-2.png)

Then, click send button.

This is currently the simplest setup method and is recommended for use.
 
## 1. Setup RTCM messages output

### 1.1 Use Satrack software

Connect the [NANO RTK Receiver](../gnss/rtk_receiver/NANO/nano-rtk-receiver.md) to your Laptop via USB.

Setup the NANO RTK Receiver as a base station, and it is recommended to use Satrack software.

[Download Satrack latest version](../assets/software/satrack_latest.zip)

1. Open Satrack, then choose the com port, baud rate then connect the receiver.
![satrack-connect-device](/images/common/Satrack-connect-device.png)

1. Menu "Tools" - "Set RTCM rate", Enable RTCMv3 output
![satrack-rtcm-output](/images/common/Satrack-rtcm-output.png)

1. Menu "Tools" - "Set NMEA rate", Disable NMEA data output
![satrack-disable-nmea](/images/common/Satrack-disable-nmea.png)

1. Menu "View" - "AS Messages view", Config output rate to 1Hz

In base station mode, the RTCM data output rate must be set to 1Hz.

![satrack-outputrate-1hz](/images/common/satrack-outputrate-1hz.png)
   
5. Config the base station fixed coordinates

There are two methods to set the coordinates of the base station:

5.1 According to the diagram below, Input the known coordinates.

Press "Get now", and modify the coordinates to the known values, then "send" to apply the fixed coordinates.

![satrack-cfg-fixedecef](/images/common/Satrack-cfg-fixedecef.png)
 

5.2 According to the CFG-SURVEY method, config miniDuration and AccLimit, then automatically calculate the average before proceeding with the setup.

![satrack-cfg-survey](/images/common/Satrack-cfg-survey.png)

After completing the above operation, you can save the current configuration with CFG-SAVE.

![satrack-cfg-save](/images/common/Satrack-cfg-save.png)

Then go to Menu "View" - "Rover Monitor view", you will see RTCM data monitor.

![satrack-view-rover-monitor-view](/images/common/Satrack-view-rover-monitor-view.png)


### 1.2 Send cmds to config base station

[Download strsvr](../assets/software/setup-for-NANO.zip)

Unzip the download file



Open strsvr.exe, choose serial for Input stream

![strsvr-main-00](/images/common/Strsvr-main-00.png)

Config serial and baud rate, output TCP stream port number, here is 9988

![strsvr-main-01](/images/common/Strsvr-main-01.png)

Load commands for configuration

![strsvr-main-02](/images/common/Strsvr-main-02.png)

Then start.

![strsvr-main-03](/images/common/Strsvr-main-03.png)


### 1.2 Others setup (Ardupilot/Mission planner) 

After above configuration, Please disconnect the receiver in the satrack.

If it is used as a base station for drone applications, you can now open the ground control software, 
such as Mission Planner. 

In the menu "Setup" - "Optional Hardware" - "RTK/GPS Inject", select the receiver's com port and baud rate.

![mp-connect-base](/images/common/Mp-connect-base.png)

then finish other configuration in Mission Planner.

## 2. Rover station (Aircraft) setup

For drones, NANO RTK Receiver or GEM1305 can be chosen as the Rover for RTK.

* Please note that NANO RTK Receiver supports Ardupilot starting from V3.0.

Whether you choose NANO RTK Receiver or GEM1305, you need to confirm in the Satrack software that all RTCM data outputs are disabled and all NMEA outputs are enabled.

In Rover mode, the output rate must be set to 5Hz.

Note: NANO RTK Receiver and GEM1305 do not support safety switch, so BRD_SAFETY_DEFLT needs to be set to 0 or a separate safety switch should be connected to the flight controller.

After completing the above settings, you can write parameters to the flight controller.
