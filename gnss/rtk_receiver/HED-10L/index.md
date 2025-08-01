---
title: "HED-10L"
date: 2025-04
---

# HED-10L Heading RTK module

## Overview

## NANO Dual-Antenna RTK Receiver

![NANO-HED10L-evk](../../../images/gnss/HED-10L/NANO-HED10L-00.png)

### PINOUT

6P 1.25mm connector (from left to right):

- GND
- NC
- PPS
- Rx
- Tx
- VCC

### DIP Switcher

the pin 3 and 4 connected to the M module for USB type C, output positioning data and heading data. so if you want to output data via usb, please keep 3 and 4 to ON position.

### Protocol 

**PALYSBLS Message** for heading data

>$PALYSBLS,025217.000,-0.577,1.030,0.782,1.416,119.25,33.55,F*4A

![HED-10L-protocol](../../../images/gnss/HED-10L/HED-10L-protocol.png)

### How to Install

![HED-10L-installation](../../../images/gnss/HED-10L/HED-10L-installation.png)

#### Installation

The figure below is a typical installation method for UAV, where the baseline length is the distance between the centers of two antennas, which needs to be measured to obtain this value.

![HED-10L-installation-1](../../../images/gnss/HED-10L/HED-10L-installation-1.png)

#### Config baseline

After installation, the baseline length needs to be configured.

Then open [Satrack software](../../../assets/software/satrack_latest.zip) , "View" - "AS Message View", choose "CFG-BLCNST" to config the baseline length and tolerant like below screenshot, then press "send":

![HED-10L-installation-config-bl](../../../images/gnss/HED-10L/HED-10L-installation-config-bl.png)

>If the distance between the two antennas remains unchanged, this setting only needs to be done once.

#### Configuration for Ardupilot

If we install according to the diagram above, the dimensions are also as shown in the picture.
The parameters of Ardupilot need to be set as follows:

GPS_POS1_X = 0
GPS_POS1_Y = +0.25
GPS_POS1_Z = -0.14

>We used self-compiled firmware for the above test, as the standard official AP firmware does not yet support this module.

## Resources

- [AN2024-HED10L-001](../../../assets/datasheet/AN-HED10L-240927.pdf)
- [Allystar GNSS binary protocol](../../../common/common_allystar_binary_protocol)
- [Satrack_User_Manual](../../../assets/datasheet/Satrack_User_Manual.pdf)