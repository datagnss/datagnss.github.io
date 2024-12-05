# D10P RTK module

## Overview

D10P is capable of tracking all global civil navigation systems (BDS, GPS, GLONASS, Galileo, QZSS, NavIC, and SBAS), as well as BDS-3 signals.

It supports RTK base and rover functions with a maximum of 128 hardware channels and can receive almost all visible satellites.

It supports L1+L5 or L1+L2 options.

It can be widely used in mower, Intelligent transportation, surveying and mapping, unmanned aerial vehicles (UAVs), intelligent agriculture, and other fields.

## Features

- Concurrent reception of multi-band multi-system satellite signals
- Support PPP-B2b/PPP/PPP-RTK (upon request)
- Internal PVT, RTD, and RTK Engine
- Update rate up to 10 Hz
- Support A-GNSS
- Support raw data output(RTCM format)


## Specifications

| Parameter | Specifications |
|-----------|---------------|
| Constellations | BDS, GPS, QZSS, GLONASS, Galileo, NavIC, SBAS |
| Update rates | 10Hz |
| Channels | 128 hardware channels |
| Position accuracy | GNSS <br> 1.0m CEP <br> SBAS <br> ＜1.0m CEP <br> RTK <br> 1.0 cm + 1 ppm (H)<br />2.0 cm + 1 ppm (V) |
| Velocity & Time accuracy | GNSS <br> 0.05 m/s CEP <br> 1PPS <br> 20ns RMS |
| TTFF | Hot start 1s <br> Cold start 27s |
| RTK[^1] | Convergence time <10s |
| Reliability | ＞99.9% |
| Sensitivity[^1] | Cold start -148 dBm <br> Hot start -155 dBm <br> Reacquisition -158 dBm <br> Tracking & navigation -165 dBm |
| Protocol | NMEA-0183 <br> RTCM 3.X, raw measurements |
| Baudrate | 115200 or 230400 bps, by default, depend on the firmware |
| Operating condition | Main supply 1.75V to 3.63V <br> Digital I/O supply 1.75V to 3.63V <br> Backup supply 1.62V to 3.63V |
| Power consumption | Tracking GNSS 30 mA @ 3.3V <br> Tracking Single system 18 mA @ 3.3V <br> Standby Data backup 16 uA <br> Standby RTC 1.4 uA |
| Serial interface | UART 2 <br> SPI[^2] 1 <br> I2C[^2] 1 |
| Operating limit | Velocity 515 m/s <br> Altitude 18,000m |
| Environmental conditions | Operating temp. -40°C to +85°C <br> Storage temp. -40°C to +90°C <br> Humidity 95% RH |
| Size | 16.0×12.2×2.4 mm, 24pin LCC |

[^1]: tested with a good external LNA
[^2]: Supported upon request with special firmware

## Case study

- [Survey and Mapping Package Kits](../../rtk_receiver/surveying-and-mapping-kits)

## Resources

- [D10P_datasheet](../../../assets/datasheet/D10P_datasheet.pdf)
- [Satrack_User_Manual](../../../assets/datasheet/Satrack_User_Manual.pdf)
- [Common RTK Commands](../../../common/common_cmds_for_rtk)
- [Allystar GNSS Binary Protocol](../../../common/common_allystar_binary_protocol)

## TEST EVK

[Test EVK](../../../gnss/rtk_receiver/NANO/nano-rtk-receiver)
