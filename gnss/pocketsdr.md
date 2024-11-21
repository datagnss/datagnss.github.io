# Pocket SDR GNSS Receiver

## Overview

Pocket SDR FE 4CH is an open-source GNSS SDR RF frontend device for Pocket SDR.
The device consists of 4 CH Maxim MAX2771 GNSS RF front-end ICs (LNA, mixer, filter, ADC, frequency synthesizer) and a Cypress EZ-USB FX3 USB 3.0 controller to connect to host PCs.
All the RF CHs are able to be configured for GNSS L1 band (1525 - 1610 MHz), or GNSS L2/L5/L6 band (1160 - 1290 MHz).
The frequency of the reference oscillator (TCXO) is 24.000 MHz, and the ADC sampling rate can be configured up to 48 Msps.

## Specifications

- Number of RF channels: 4 CH
- LO (PLL) Frequency: 1525 ~ 1610 MHz (GNSS L1 band) or 1160 ~ 1290 MHz (GNSS L2/L5/L6 band)
- IF Bandwidth: 2 ~ 36 MHz
- Sampling Rate: 4, 6, 8, 10, 12, 16, 20, 24, 32, 40 or 48 Msps
- Sampling Type: I or I/Q sampling, 2 bits resolution
- Host I/F: USB 3.0, type-C (high-speed 480 Mbps or super speed 5 Gbps)
- Power: 5V, USB bus power

## Test

![PocketSDR test](../images/gnss/pocketsdr/Pocketsdr-test-01.png)

- [PocketSDR with Raspberry Pi](./pocketsdr_with_raspberrypi.md)

## Product

![PocketSDR](../images/gnss/pocketsdr/Pocketsdr-main-02.png)

## Package list

- PocketSDR *1
- jumper wire *1
- USB Type-C cable *1
- Heatsink *1

## Drives and Utilities

- [CyUSB3-Driver](../assets/driver/CyUSB3-Driver.zip)

## Resources
- [Github PocketSDR Project](https://github.com/tomojitakasu/PocketSDR)
