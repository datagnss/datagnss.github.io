---
title: "MA-10P V2 Wiki"
date: 2026-08-18
---
# MA-10P V2 Wiki

## Overview

MA-10P V2 is a high-precision GNSS PPP receiver based on the D10P module.
It is designed for Japan's QZSS PPP services and supports GPS, QZSS, Galileo, BDS, and GLONASS on L1/L5 frequencies.

Within the QZSS service coverage area, including major parts of the Asia-Pacific region and Australia as shown in the coverage map below, the receiver enables convenient real-time PPP positioning without requiring any local correction service.

After initialization and convergence, PPP positioning accuracy can typically reach 0.1–0.6 m. Outside the QZSS service coverage area, PPP positioning can be achieved through network-based correction services, such as NTRIP.

![](../../../images/ma-10p/v2/madoca-ppp-service-area.png)

With its built-in positioning engine, it enables robust PPP positioning based on MADOCA services, making it ideal for various positioning projects within the service coverage area.

The MA10P-V2 supports both Bluetooth Low Energy (BLE) and USB connectivity, and can also output positioning data via a serial interface.

It is compatible with a wide range of popular GIS and field data collection applications.

### Supported Software

- SW Maps: free GIS and mobile mapping app for geographic data collection, mapping, KML, shapefiles, and more.
- QField: professional mobile GIS application for field surveying, geospatial data collection, and management.
- ROLAVICam: mobile capture application for photogrammetry, videogrammetry, and field documentation.

## Key Features

- D10P-based high-precision PPP receiver
- Supports QZSS PPP services via QZS6C
- Supports GPS, QZSS, Galileo, BDS, and GLONASS on L1/L5
- Works with MADOCA correction services
- Supports USB serial and TTL UART output
- Designed for real-time positioning applications

## Specifications

| Parameter                | Specifications                                                                                  |
| ------------------------ | ----------------------------------------------------------------------------------------------- |
| Constellations           | GPS, QZSS, BDS, Galileo                                                                         |
| Channel                  | 128 hardware channels                                                                           |
| Update rates             | 1Hz                                                                                             |
| Position accuracy        | GNSS 1.5m `<br>` PPP 0.1-0.6m, coverage time 5-15 minutes                                     |
| Reliability              | ＞99.9%                                                                                         |
| Protocol                 | NMEA-0183                                                                                       |
| Baudrate                 | 230400 bps, by default                                                                          |
| Operating condition      | Main supply 4.75-5.25V    |
| Serial                   | UART, 6 pins, 1.25mm pitch   |
| Interface                | BLE serial,USB,UART                                                                             |
| Environmental conditions | Operating temp. -40°C to +85°C `<br>`Storage temp. -40°C to +90°C `<br>`Humidity 95% RH |

## Hardware

MA10P-V2 must use a GNSS antenna that supports L1, L2, L5, and L6. The L6 band is used to receive PPP correction service signals.

The bundled AT400 antenna supports reception across all bands and all signals.

If you use another antenna, please check the antenna specifications carefully.

## Notes

- Use the receiver in an open-sky environment for best PPP performance.
- Accuracy and convergence time depend on antenna quality, sky visibility, and service conditions.
- For field use, verify the actual correction service and connection settings before deployment.
