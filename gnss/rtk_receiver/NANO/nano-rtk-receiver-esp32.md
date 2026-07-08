---
title: "NANO RTK Receiver Pro"
date: 2025-01-10
---

## 1. Overview

![NANO RTK Receiver](../../../images/gnss/NANO-RTK-with-case-ant-bg-760x.png)

We redesigned the new generation NANO RTK Receiver.

The new version is based on the same D10P RTK module with ESP32-S3 chipset and has more powerful performance.

Even you can develop your own application with this receiver.

It supports Bluetooth (BLE serial).

It support working with iPad and iPhone devices.

It supports USB serial port, 6P connector serial port.

Base on the powerful performance of ESP32S3, the new generation NANO RTK Receiver can support more features.

For example, you can set it to connect to a Wi-Fi hotspot directly, and then view and set its various parameters through a web page.

## 2. Features

- WiFi AP mode for easy setup
- Web page for configuration and status monitoring
- Support working with iPad and iPhone devices

### 2.1 Hardware Description

| Hardware Version | Web Page Version | Latest Version |
| --- | --- | --- |
| V3.2 | NANO RTK Receiver Pro | nano.rtk.s3.15.1.0.7.rc.794 |
| V3.5 | NANO RTK Receiver v3.5 | 1.0.7.rc.1434, 2026 May 6 16:32:51 |

How to identify V3.2 and V3.5, please refer to [this guide](../find-v32-and-v35/).

## 3. Quick Start

<!-- How to Quickly Use NANO RTK Device for RTK Survey -->
[How to Quickly Use NANO RTK Device for RTK](../nano-rtk-receiver-pro-guide/)


{% capture note_firmware_version %}
Many screenshots and descriptions below are based on firmware from version 1.0.6.dev.300. If your version differs, please refer to the actual behavior of your device's firmware.
{% endcapture %}
{% include blocknote.html title="Note" content=note_firmware_version %}

The NANO RTK Receiver Kits include the following items:

- NANO RTK Receiver
- Type-C cable, 1m
- 6P GH 1.25 cable, 20/30cm

The 6P cable is used to connect the NANO RTK Receiver to other devices, such as Ardupilot or PX4.


{% capture default_configuration_note %}
- USB UART Baud rate: 230400bps
- 6P UART Baud rate: 230400bps
- Output protocol: Rover mode, NMEA 1Hz(GGA,GSA,GSV,ZDA,GST,RMC)
{% endcapture %}
{% include blocknote.html title="Default configuration" content=default_configuration_note %}

### 3.1 Configuration and PINOUT

![NANO RTK Receiver Connector](../../../images/gnss/nano/nano-rtk-rcv-connector-00.png)

From Left to right:

`5V` `RxD` `TxD` `SCL` `SDA` `GND` 

Connector model : JST, GH1.25, 6P

{% capture note_6p_connector %}
- 6P connector is used to connect to other devices, such as radio devices, or Ardupilot.
- 6P UART Baud rate: 230400bps
{% endcapture %}
{% include blocknote.html title="Note" content=note_6p_connector %}

Type C connector is used to connect to Host devices, such as Phone, iPad, or PC.

USB driver is required to be installed when connecting to PC.

[CH34x USB Serial Port Driver](../../../rtk-board/files/drivers/Windows-CH340-Driver.zip)

{% capture note_usb_uart %}
- USB UART Baud rate: 230400bps
- If you want to change this baud rate, please refer to this link: [change baud rate](../../../common/common_config_uart_baud_rate.md)
{% endcapture %}
{% include blocknote.html title="Note" content=note_usb_uart %}

### 3.2 Connect your NANO RTK Receiver

NANO RTK Receiver can be connected via:
- USB
- Bluetooth (BLE)
- WiFi connection

#### 3.2.1 **Bluetooth (BLE) connection**

NANO RTK Receiver supports Bluetooth (BLE) connection. 
{% capture note_sw_maps %}
we recommend using the following software to connect to the NANO RTK Receiver.

![SW Maps](https://play-lh.googleusercontent.com/f5L5FWlag_gc1NY2Is6Y5f6vHxxmFg9WEHrkNqgE__9SwRVjaYPkpVPg3JuRhfNegvSr6WnLHR-gCYH0bFEoqg=w60-h120-rw)
![QField for QGIS](https://play-lh.googleusercontent.com/oriovocvMGjBIocrx-fcUHm50tZ1KyAi3uc4XMQt-mVgSOVCrI8R_Xcm8kcJXlW6WIAHudEiWcfSgfRUuIKJtQ=w60-h120-rw)

{% endcapture %}
{% include blocknote.html title="Note" content=note_sw_maps %}


SW Maps / QField for QGIS are the professional GIS data collection software that supports Bluetooth (BLE) connection. It supports RTK devices, such as the NANO RTK Receiver.

You can download them from the **Google Play Store** or **App Store**.

They support Android and iOS devices.

Please refer to the below to find details on how to use SW Maps / QField to connect to the NANO RTK Receiver.

They all support **Bluetooth (BLE)** connection.

![QField BLE connection](../../../images/gnss/qfield/qfield_00_main.png)

QField supports read NMEA data by TCP connection.

The default BLE broadcast name is "NANO_RTK_xxxx", where "xxxx" is the last 4 digits of the MAC address.

![](../../../images/gnss/nano/sw_ble_conn_00.png)

#### 3.2.2 **WiFi connection**

NANO RTK Receiver supports WiFi connection. It support WiFi AP mode and WiFi sta mode.

In WiFi AP mode, you could connect the NANO RTK Receiver's WiFi from your phone or PC, which is act as a device like router. 

WiFi sta mode is used to let the NANO RTK Receiver toconnect to a WiFi hotspot or office WiFi SSID. Then NANO RTK Receiver will get the IP address from the WiFi router or your hotspot.

![](../../../images/gnss/nano/nano_wifi_ap_00.png)

![](../../../images/gnss/nano/nano_sta_mode_00.png)

NANO RTK Receiver support above two modes by default.

In default configuration, the NANO RTK Receiver will start a WiFi AP with SSID: "NANO_RTK_xxxx" and password: "datagnss".

When powered on, the NANO RTK Receiver will automatically operate in AP mode, creating a hotspot with the SSID `NANO_RTK_XXXX` and the password `datagnss`.

You can connect to this hotspot using your smartphone or laptop. Then, open a browser and enter the URL `192.168.4.1` to access the web page of the NANO RTK Receiver.

![Connect NANO's AP](../../../images/gnss/nano/connect_ap_01.png)

After opening, the webpage appears as shown below:

![](../../../images/gnss/nano/nano_web_main_00.png)

{% capture note_ap_hotspot %}
you cannot use a phone to both connect to the NANO's AP and act as the Wi‑Fi hotspot at the same time. You will need two devices: one to connect to the NANO and another to serve as the Wi‑Fi hotspot.
{% endcapture %}
{% include blocknote.html title="Note" content=note_ap_hotspot %}

![WiFi connection](../../../images/gnss/nano/wifi_conn_00.png)

Tap `Settings` - `Scan` Button, to scan and get the available  WiFi SSID list:

![WiFi List](../../../images/gnss/nano/connect_wifi_01.png)

Then select the SSID, input the password, then press `connect` or `save and reboot`.

![](../../../images/gnss/nano/wifi_conn_02.png)

When wifi sta connected, the NANO RTK Receiver will start to get the IP address from the router. The IP address will be displayed on the web page.

You could see the IP address(10.10.168.120) on the above screenshot.

Now you can open web browser, input the IP address (http://10.10.168.120) to view the NANO RTK Receiver's status with a PC or phone in the same LAN network.

#### 3.2.3 **USB connection**

NANO RTK Receiver supports USB UART connection on Android phone or Android tablet, or PC.

![](../../../images/gnss/nano/usb_conn_00.png)


### 3.3 Config NANO RTK Receiver

In both WiFi AP mode or WiFi Sta mode, you could login to the NANO RTK Receiver's web page to configure the NANO RTK Receiver.

Login to the NANO RTK Receiver's web page.

- **Homepage**

![](../../../images/gnss/nano/nano_web_main_00.png)

- **GNSS**

For the GNSS section, there are three modes available in the dropdown menu: `Base`, `Rover` and `Unconfigured`.

In default, the mode is `Rover`.


![](../../../images/gnss/nano/nano-web-gnss.png)


>**Base**
In Base mode, the module will automatically be set to Base mode upon startup. At this time, you can also configure how the Base coordinate is obtained.

![](../../../images/gnss/nano/gnss_settings_01.png)

The Base Coordinate supports three modes:

![](../../../images/gnss/nano/gnss_settings_02_base_coordinate.png)

>**Rover**
In Rover mode, the module will automatically be set to Rover mode upon startup.

>**Unconfigured**
In Unconfigured mode, the module will not perform any operations upon startup.
This mode is suitable for scenarios where users need to control the module themselves. 
In this case, users can connect the Type-C port to a computer, use Satrack to configure the module, and save the configuration. Upon the next startup, the module's configuration will remain unchanged.

- **Settings**

![](../../../images/gnss/nano/nano-web-settings.png)

In settings, you can configure the following parameters:

>**WiFi Settings**
Configure the WiFi SSID and password.

>**RTCM Correction Source**
Configure the RTCM correction source.

![](../../../images/gnss/nano/rtcm_corr_source_01.png)

>**External Port**
>Configure the external port.
>- Swap Rx and Tx
>- Baud rate, in default, it is 230400bps.

- **System**

![](../../../images/gnss/nano/sys_info_01.png)

### 3.4 Feed RTCM correction data to NANO RTK Receiver

NANO RTK Receiver support to get RTCM data from the following source: 
- Bluetooth
- USB UART
- NTRIP Client
- TCP Client*
- 6P Connector.

>from ver 1492, support tcp client to get rtcm data.

#### 3.4.1 Feed RTCM data via Bluetooth

If you connect the NANO RTK Receiver via Bluetooth(BLE), you could feed RTCM data to the NANO RTK Receiver via software like SW Maps.

![](../../../images/gnss/nano/sw_ntrip_conn_02.png)

![](../../../images/gnss/nano/sw_ntrip_conn_00.png)

Then after the RTCM data is received, the NANO RTK Receiver will start to do **RTK positioning**.

#### 3.4.2 Feed RTCM data via USB UART

If you connect the NANO RTK Receiver via USB UART in SW Maps, you could feed RTCM data to the NANO RTK Receiver via software like above section **3.4.1 Feed RTCM data via Bluetooth**.


#### 3.4.3 Feed RTCM data via WiFi connection

If you have configured the NANO RTK Receiver to connect to a WiFi hotspot, you could let NANO RTK Receiver to get RTCM data to from NTRIP caster by NANO RTK Receiver itself.

The NANO RTK Receiver will start to get RTCM data from NTRIP caster automatically when it is connected to a WiFi hotspot.

Follow the **3.2.2 WiFi connection** to connect the NANO RTK Receiver to a WiFi hotspot or MiFi.

Then open web browser, input the IP address (like our example  http://10.10.168.120)

Then navigate to the `GNSS` page, and set the `NTRIP client` to be enabled. then input the ntrip client parameters.

Then Apply it.

The NANO RTK Receiver will start to get RTCM data from NTRIP caster automatically.

Now you could navigate to main page, and you will see the ntrip client connection status is `Connected` and Rx data rate.

![](../../../images/gnss/nano/web_status_01.png)

### 3.5 Work with Android device

Follow the 3.1.2 steps, and then connect your Android device to the Type-C port by OTG USB cable.

For Android devices, we recommend connecting NANO RTK Receiver via Type C cable, which is better and stable than Bluetooth connection.

OTG USB cable refer to this link in datagnss store: [USB OTG cable](https://www.datagnss.com/collections/accessories/products/usb-otg-cable)

### 3.6 Work with iPad and iPhone devices

The details operation steps refer to the below link:

[NANO RTK Receiver Surveying and Mapping Kits](https://docs.datagnss.com/gnss/rtk_receiver/surveying-and-mapping-kits/)

![NANO RTK Receiver Surveying and Mapping Kits](../../../images/rtk/surveying-and-mapping/nano-surveying-kits.png)

![NANO RTK Receiver Surveying and Mapping Kits](../../../images/rtk/surveying-and-mapping/nano-surveying-kits-ipad.png)


## 4. Update firmware

### 4.1 update firmware from web [Recommended]

The NANO RTK Receiver is based on the ESP32-S3 platform, offering powerful data processing capabilities and supporting various connectivity options such as WiFi and Bluetooth.

{% capture note_web_upgrade %}
Starting from firmware version 1.0.6.300, upgrading firmware directly from the web page is supported.
{% endcapture %}
{% include blocknote.html title="Note" content=note_web_upgrade %}

By flashing different firmware onto the NANO RTK Receiver, additional functionalities can be achieved.


![](../../../images/gnss/nano/firmware_update_01.png)

Choose firmware (*.dgfm, *.dgfw)

![](../../../images/gnss/nano/firmware_update_03.png)

Then press "Upload & Update"

![](../../../images/gnss/nano/firmware_update_02.png)

When the progress bar reaches 100%, the upgrade is complete.

{% capture note_upload_http_error %}
After upgrading to 100%, there is a small chance that the following message may appear: "Failed to upload firmware: HTTP error! status: 0." In this case, you can ignore the message and press "Home" to return to the homepage.
{% endcapture %}
{% include blocknote.html title="Note" content=note_upload_http_error %}

![](../../../images/gnss/nano/firmware_update_04.png)


## 5. FAQS

- **Q: How to change baud rate?**
  **A: Please refer to this link: [change baud rate](../../../common/common_config_uart_baud_rate.md)**

- **Q: How to connect my office's WiFi?**
  **A: Please refer to the section `3.2.2 WiFi connection`.**

- **Q: How to connect the external radio link device, such as 3DR radio?**
  **A: Please refer to the section `___`.**

## 6. Resource

### 6.1 Related links

### 6.2 Firmware

- Latest Firmware:- 

 
