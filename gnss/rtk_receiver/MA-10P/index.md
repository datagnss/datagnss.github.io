---
title: "MA-10P MADOCA GNSS Receiver"
date: 2025-07
---

# Overview

The MA-10P GNSS Receiver is a high-precision PPP receiver based on the D10P module, supporting Japan's QZSS/MADOCA service.

It supports navigation systems including GPS/QZSS, GALILEO, and GLONASS, and receives signals on L1/L5 frequencies.

With a built-in PPP positioning engine, it enables PPP positioning based on the MADOCA service. When conditions permit, PPP-AR positioning is also achievable.

The MA-10P can be widely used in various positioning projects within the coverage area of the MADOCA service.

![MA-10P PPP Receiver](../../../images/ma-10p/ma-10p-main-00.png)

The MA-10P PPP Receiver consists of the MA-10P module and the QZS-6C module. The MA-10P module performs PPP positioning, while the QZS-6C module handles the reception and processing of QZSS MADOCA Correction.

# Specifications

## GNSS

| Parameter | Specifications |
| --- | --- |
| Constellations | GPS, QZSS, GLONASS, Galileo |
| Channel | 128 hardware channels |
| Update rates | 1Hz default |
| Position accuracy | GNSS 1.5m CEP |
| PPP | ~30.0 cm (PPP)<br> 5.0 cm ( PPP-AR ) |
| Velocity & Time accuracy | GNSS 0.05 m/s CEP<br>1PPS 20ns RMS |
| TTFF | Hot start 1s<br>Cold start 27s |
| Reliability | ＞99.9% |
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


