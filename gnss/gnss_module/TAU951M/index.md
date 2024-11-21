# TAU951M RTK module

The TAU951M series is a set of GNSS dual-band high-precision RTK navigation and positioning module which is based on the state of art CYNOSURE IV dual-core SoC chip.
It is capable of tracking all global civil navigation systems (BDS, GPS, GLONASS, Galileo, QZSS, NavIC, and SBAS), as well as BDS-3 signals.
The latest dual-core architecture CYNOSURE IV adopts 22 nm process, with built-in dual-core MCU and 8Mbit MRAM, integrating multi-band multi-system GNSS RF and baseband.
This newly designed architecture makes the module achieve centimeter level position accuracy and higher sensitivity,greater for improved jam resistance and multipath,and provide a highly robust service in complicated environment.
Along with its preeminent performance, the compact size (16.0×12.2×2.4 mm) of TAU951M-P2 series of LCC package with lower consumption makes it suitable for various demandsunder different conditions.
It can be widely used in mower, Intelligent transportation, surveying and mapping, unmanned aerial vehicles (UAVs), intelligent agriculture, and other fields.

## Features

- Concurrent reception of multi-band multi-system satellite signals
- Support BDS-3 signals: B1C, B2a
- Support PPP-B2b/PPP/PPP-RTK (upon request)
- Internal PVT, RTD, and RTK Engine
- Update rate up to 10 Hz
- Support A-GNSS
- Support raw data output(RTCM format)
- Smart jammer detection and suppression


| Mode | GPS/QZS | | | | | BDS | | | | | | GLONASS | | GALILEO | | | | NavIC | SBAS |
|------|---------|---|---|---|---|-----|---|---|---|---|---|----------|---|----------|---|---|---|-------|------|
| | L1CA | L1C | L2C | L5 | L6 | B1I | B1C | B2I | B2b | B2a | B3I | G1 | G2 | E1 | E5a | E5b | E6 | L5 | L1 |
| A(default) | • | ○ | - | • | - | • | • | - | - | • | - | • | - | • | • | - | - | ○ | • |
| B | • | ○ | • | - | - | • | • | • | - | - | - | • | • | • | - | • | - | - | • |
| C | • | • | • | - | - | • | • | - | - | - | - | • | - | • | - | - | - | - | • |

[&#x25CB;] Supported upon request with special firmware

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

- [Survey and Mapping Package Kits](../surveying-and-mapping-kits.md)

## Resources

- [TAU951M_datasheet](../../../assets/datasheet/TAU951M-P2-Datasheet-V1.0.pdf)
- [Satrack_User_Manual](../../../assets/datasheet/Satrack_User_Manual.pdf)

## TEST EVK

[Test EVK](../../rtk_receiver/NANO/nano-rtk-receiver.md)
