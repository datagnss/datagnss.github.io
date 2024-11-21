# TAU951M RTK module

## Overview

The TAU951M series is a high-precision GNSS dual-band RTK navigation and positioning module based on the state-of-the-art CYNOSURE IV dual-core SoC chip.

### Key Features

- Supports all global civil navigation systems (BDS, GPS, GLONASS, Galileo, QZSS, NavIC, and SBAS)
- Compatible with BDS-3 signals
- Built on CYNOSURE IV dual-core architecture using 22nm process
- Integrated dual-core MCU and 8Mbit MRAM
- Multi-band multi-system GNSS RF and baseband integration

### Performance Advantages

- Centimeter-level positioning accuracy
- Enhanced sensitivity
- Superior jam resistance and multipath mitigation
- Highly robust service in complicated environments

### Applications

With its outstanding performance and compact size (16.0×12.2×2.4 mm), the TAU951M-P2 series LCC package module features low power consumption and is suitable for various applications:

- Mowers
- Intelligent transportation
- Surveying and mapping
- Unmanned Aerial Vehicles (UAVs)
- Intelligent agriculture
- Other specialized fields

### Specification

| Parameter                  | Specifications                              |
|----------------------------|----------------------------------------------------------|
| Constellations             | BDS, GPS, QZSS, GLONASS, Galileo, NavIC, SBAS            |
| Update rates               | 10Hz                                                     |
| Position accuracy          | GNSS: 1.0m CEP<br />SBAS: ＜1.0m CEP<br />RTK: 1.0 cm + 1 ppm (H)<br />2.0 cm + 1 ppm (V) |
| Velocity & Time accuracy   | GNSS: 0.05 m/s CEP <br>  1PPS: 20ns RMS |
| TTFF                       | Hot start: 1s<br>Cold start: 27s |
| RTK                        | Convergence time: <10s |
| Reliability                | ＞99.9%                                                   |
| Sensitivity<sup>[1]<sup>   | Cold start: -148 dBm<br>Hot start: -155 dBm<br>Reacquisition: -158 dBm<br>Tracking & navigation: -165 dBm |
| Protocol                   | NMEA-0183, RTCM 3.X, raw measurements                    |
| Baudrate                   | 115200 or 230400 bps, by default, depend on the firmware |
| Operating condition        | Main supply: 1.75V to 3.63V<br>Digital I/O supply: 1.75V to 3.63V<br>Backup supply: 1.62V to 3.63V |
| Power consumption          | Tracking: GNSS: 30 mA @ 3.3V<br>Single system: 18 mA @ 3.3V<br>Standby: Data backup: 16 uA<br>RTC: 1.4 uA |
| Serial interface           | UART *2 <br> SPI *1 <br> I2C *1 |
| SPI<sup>[2]</sup>          | 1                                                        |
| I2C<sup>[2]</sup>          | 1                                                        |
| Operating limit            | Velocity: 515 m/s<br>Altitude: 18,000m |
| Storage temp.              | -40°C to +90°C                                           |
| Humidity                   | 95% RH                                                   |
| Size                       | 16.0×12.2×2.4 mm, 24pin LCC                              |

## Resources

 [TAU1302-1303-Datasheet.V1.0](files/T-5-1909-001-TAU1303-DS.V1.0.pdf)  
 [TAU130x-hardware-manual](files/T-5-2107-TAU1302%20Datasheet-V1.5.pdf)  
 [TAU130x GNSS Protocol Specification V2.3](files/T-5-1908-001-GNSS_Protocol_Specification-V2.3.pdf)  
