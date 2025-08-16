---
title: "MA-10P PPP GNSS Receiver"
date: 2025-08
---

# MA-10P PPP GNSS Receiver

## Overview
The MA-10P PPP GNSS Receiver is designed to support QZSS MADOCA PPP positioning services.

MA-10P fully supports QZSS MADOCA PPP positioning, enabling both PPP and PPP-AR modes.

For more details on QZSS MADOCA PPP services, please refer to [Multi-GNSS Advanced Orbit and Clock Augmentation - Precise Point Positioning (MADOCA-PPP)](https://qzss.go.jp/en/overview/services/sv13_madoca.html).

The MA-10P can independently receive L6E service data, decode it, and achieve PPP and PPP-AR positioning.

MA-10P is also seamlessly compatible with the Raspberry Pi Zero, allowing you to run your own PPP algorithms and develop additional applications on the Pi Zero.

![MA-10P PPP GNSS Receiver](../images/ppp/MA-10P-main-00.png)

## Specifications

| Parameter | Specifications |
| --- | --- |
| Constellations* | GPS, QZSS, GLONASS, Galileo, BDS |
| Channel | 128 hardware channels |
| Update rates | 1Hz default |
| Position accuracy | GNSS 1.5m CEP |
| PPP | ~30.0 cm (PPP)<br> 5.0 cm ( PPP-AR ) |
| Velocity & Time accuracy | GNSS 0.05 m/s CEP<br>1PPS 20ns RMS |
| TTFF | Hot start 1s<br>Cold start 27s |
| PPP converage | < 15minutes (w/o iono corr.) <br> < 3minutes (w/ iono corr.) |
| Reliability | > 99.9% |
| Sensitivity | Cold start -148 dBm<br>Hot start -155 dBm<br>Reacquisition -158 dBm<br>Tracking & navigation -165 dBm |
| Protocol | NMEA-0183 |
| Baudrate | 230400 bps, by default |
| Operating condition | Main supply 4.75-5.25V|
| Power consumption | Tracking GNSS 30 mA @ 3.3V<br>Single system 18 mA @ 3.3V<br>Standby Data backup 16 uA<br>RTC 1.4 uA |
| Serial | UART, 6 pins, 1.25mm pitch|
| USB | CP210x serial port |
| Environmental conditions | Operating temp. -40°C to +85°C<br>Storage temp. -40°C to +90°C<br>Humidity 95% RH |
| Dimensions(mm) | 65 x 30 |
| Weight (g) | 30 |
* the current firmware not support BDS for MADOCA, it will be updated to support it.


## PINOUT

## Resource

## Order information
