---
title: "Setup owned base station and rover"
date: 2026-01
---
# Setup owned base station

## Overview

[Order link](https://www.datagnss.com/collections/evk/products/multi-band-rtk-receiver-package?variant=40933450809379)

The NANO RTK Receiver can be conveniently used for surveying and mapping applications. It supports RTK positioning, providing real-time centimeter-level accuracy.
It is compatible with common free surveying and mapping software like SW Maps and Mapit GIS.

However, to achieve high-precision RTK positioning, base station data services are required. If there are service providers in your area, that's great; you just need to pay to activate an account. They will provide you with a set of server information and an access account, allowing you to obtain their data in real-time and thus perform RTK positioning.

If not, or if you want to use your own, that's also fine. You can establish your own base station.

![NANO RTK Receiver base station](../../../images/rtk/total-test-kits/total-test-kits-base-01.jpg)

![](../../../images/rtk/total-test-kits/960px-Real_time_kinematic.svg.png)

By <a href="//commons.wikimedia.org/wiki/User:Kavelgrisen" title="User:Kavelgrisen">TS Eriksson</a> - <span class="int-own-work" lang="en">Own work</span>, <a href="https://creativecommons.org/licenses/by-sa/4.0" title="Creative Commons Attribution-Share Alike 4.0">CC BY-SA 4.0</a>, <a href="https://commons.wikimedia.org/w/index.php?curid=98134945">Link</a>


Of course, based on this diagram, if we want to perform RTK positioning, we need to obtain data from the base stations on the rover device. If we need owned base stations, we have to consider how to transfer the data from the base stations to the rover devices.

The network aspect is relatively simple; we can use a server (such as ntrip caster) to upload the base station data to a remote caster, and then our rover device can retrieve the data from the remote server. This seems feasible. 

However, our data would have to be transmitted from our home to a server that may be located thousands of kilometers away, and then the rover device would need to fetch the data from that same remote server. If the network is good, the latency will be low and acceptable. But if the network is poor, the data transmission delay time could be significant.

The biggest advantage of this approach is that once the base stations are set up, we can perform fieldwork even dozens of kilometers away from them. Generally, the effective coverage of RTK base stations can reach several dozen kilometers, although it’s best to be within 15 kilometers.

However, if you are only working within a range of 1-2 kilometers near your home, then the need for data transmission back and forth may not be as essential. In that case, we could use radio to transfer the data directly.

## Features

- Support RTK positioning
- Support GPS, GLONASS, BDS, Galileo, QZSS, SBAS
- Support Telemetry Radio (optional)
- Support PPK post-processing
- Support iPhone / iPad, Android
- Compatible with SW Maps, Mapit GIS, etc.

We provide an OTG cable, which can be used to connect NANO RTK Receiver to Android devices.
On iPhone / iPad, the OTG cable can support power from iPad / iPhone, no additional power-bank needed.

**Please note that this OTG cable has two Type C interfaces on both ends, but it is not a normal USB Type C cable. It supports device connection on Android devices. Or it can be powered the NANO RTK Receiver from iPhone / iPad.**

![OTG Cable](../../images/rtk/surveying-and-mapping/TYPE-C-OTG-CABLE-500x.png)

## Quick guide

### Packing List

- NANO RTK Receiver pro
- RTK Helix antenna
- Type C cable
- OTG type cable
- 6P cable (0.3m)
- 3M magic tape

![Kits_list](../../images/rtk/surveying-and-mapping/surveying_kits_list.png)

- Handheld accesseries

![handheld_accesseries](../../images/rtk/surveying-and-mapping/accessories_2.png)

### Installation

![Installation](../../images/rtk/surveying-and-mapping/installation_01.png)

![Installation](../../images/rtk/surveying-and-mapping/installation_02.png)

![Installation](../../images/rtk/surveying-and-mapping/installation_03.png)

![Installation](../../images/rtk/surveying-and-mapping/installation_04.png)

![Installation](../../images/rtk/surveying-and-mapping/installation_05.png)

![Installation](../../images/rtk/surveying-and-mapping/installation_06.png)

![Installation](../../images/rtk/surveying-and-mapping/installation_07.png)

![Installation](../../images/rtk/surveying-and-mapping/installation_09.png)

![Installation](../../images/rtk/surveying-and-mapping/installation_09_00.png)

## With Android devices

On Android devices, NANO RTK Receiver can be used as a USB device, supporting USB serial mode.
We strongly recommend using USB Serial mode on Android devices to ensure stable and reliable data collection.

Using SW Maps as an example, the steps to use NANO RTK Receiver for measurement and mapping are as follows:

1. Select "**USB Serial GNSS**"

![SW Maps](../../images/rtk/surveying-and-mapping/sw-maps-0-01.png)

2. GNSS Receiver Settings

![GNSS Receiver Settings](../../images/rtk/surveying-and-mapping/sw-maps-0-02.png)

If your SW Maps doesn't have the "**NANO RTK**" option, you can select "**ublox RTK**" instead, as they are compatible.

3. Config **NTRIP connection**

If you select the instrument type as RTK, the left toolbar will display an "**NTRIP Connection**" option, used to input NTRIP information.

![NTRIP Connection](../../images/rtk/surveying-and-mapping/sw-maps-0-03.png)

![NTRIP Connection Settings](../../images/rtk/surveying-and-mapping/sw-maps-0-04.png)

Then Press "**Connect**" to establish the connection.

## With iPhone / iPad

### for iPhone

If you use an iPhone, you can use the installation method shown in the figure 1 directly.

![iPhone](../../images/rtk/surveying-and-mapping/handheld_surveying_sets-300x.png)

### for iPad

If you use an iPad, you can use the installation method shown in the figure 2 directly.

First, attach the 3M adhesive tape provided with the kit to the back side of the iPad. Note the usage habits, usually sticking to the upper right position of the back side of the iPad, and pay attention not to block the camera.

![NANO attach to iPad](../../images/rtk/surveying-and-mapping/nano-attched-on-the-back-side.png)

Then, connect NANO RTK Receiver to the iPad via the OTG cable.

![NANO attach to iPad](../../images/rtk/surveying-and-mapping/nano-with-ipad-300x.png)

### Connection

On iPad / iPhone, you can only use the Bluetooth connection method to connect.

In SW Maps, select "Bluetooth GNSS" to connect.

![SW Maps](../../images/rtk/surveying-and-mapping/sw-maps-0-01.png)

On iPad / iPhone, we need to use the BLE mode to connect, as shown in the figure below:

![NANO connect via Bluetooth](../../images/rtk/surveying-and-mapping/sw-maps-ipad-01.png)

![NANO connect via Bluetooth](../../images/rtk/surveying-and-mapping/sw-maps-ipad-02.png)

## Field Work Gallery

![NANO RTK Receiver Surveying Kit](../../images/rtk/surveying-and-mapping/nano-surveying-kits-1.png)

![NANO RTK Receiver Surveying Kit](../../images/rtk/surveying-and-mapping/nano-surveying-kits-ipad.png)
