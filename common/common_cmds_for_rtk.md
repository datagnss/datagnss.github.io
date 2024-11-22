# Common RTK Commands

## Output Rate

| ID | 1Hz | 5Hz | Remark |
|----|-----|-----|---------|
| 0 | F1 D9 06 44 10 00 00 00 01 00 01 00 00 00 E8 03 00 00 00 00 00 00 47 13 | F1 D9 06 44 10 00 00 00 01 00 05 00 00 00 C8 00 00 00 00 00 00 00 28 2E | CFG-PWRCTL2 |

## NMEA-0183 Messages output

| ID | NMEA | Disable | Enable | Remark |
|----|------|---------|---------|---------|
| 1 | GGA | F1 D9 06 01 03 00 F0 00 00 FA 0F | F1 D9 06 01 03 00 F0 00 01 FB 10 | |
| 2 | GLL | F1 D9 06 01 03 00 F0 01 00 FB 11 | F1 D9 06 01 03 00 F0 01 01 FC 12 | |
| 3 | GSA | F1 D9 06 01 03 00 F0 02 00 FC 13 | F1 D9 06 01 03 00 F0 02 01 FD 14 | |
| 4 | GSV | F1 D9 06 01 03 00 F0 04 00 FE 17 | F1 D9 06 01 03 00 F0 04 01 FF 18 | |
| 5 | RMC | F1 D9 06 01 03 00 F0 05 00 FF 19 | F1 D9 06 01 03 00 F0 05 01 00 1A | |
| 6 | VTG | F1 D9 06 01 03 00 F0 06 00 00 1B | F1 D9 06 01 03 00 F0 06 01 01 1C | |
| 7 | ZDA | F1 D9 06 01 03 00 F0 07 00 01 1D | F1 D9 06 01 03 00 F0 07 01 02 1E | |
| 8 | GST | F1 D9 06 01 03 00 F0 08 00 02 1F | F1 D9 06 01 03 00 F0 08 01 03 20 | |
| 9 | GNTXT | F1 D9 06 01 03 00 F0 20 00 1A 4F | F1 D9 06 01 03 00 F0 20 01 1B 50 | |

## RTCM Messages output

| ID | Msg Type | Disable | Enable | Remark |
|----|----------|---------|---------|---------|
| 11 | RTCM 1077 | F1 D9 06 01 04 00 F8 4D 00 FF 4F 15 | F1 D9 06 01 04 00 F8 4D 01 FF 50 17 | GPS MSM7 |
| 12 | RTCM 1087 | F1 D9 06 01 04 00 F8 57 00 FF 59 33 | F1 D9 06 01 04 00 F8 57 01 FF 5A 35 | GLONASS MSM7 |
| 13 | RTCM 1097 | F1 D9 06 01 04 00 F8 61 00 FF 63 51 | F1 D9 06 01 04 00 F8 61 01 FF 64 53 | GALILEO MSM7 |
| 14 | RTCM 1117 | F1 D9 06 01 04 00 F8 75 00 FF 77 8D | F1 D9 06 01 04 00 F8 75 01 FF 78 8F | QZSS MSM7 |
| 15 | RTCM 1127 | F1 D9 06 01 04 00 F8 7F 00 FF 81 AB | F1 D9 06 01 04 00 F8 7F 01 FF 82 AD | BDS MSM7 |
| 16 | RTCM 1005 | F1 D9 06 01 04 00 F8 05 00 FF 07 3D | F1 D9 06 01 04 00 F8 05 01 FF 08 3F | BASE Station Coordinates |
| 17 |  |  |  |  |

## Config the base staion's coordinates

### CFG-SURVEY survey mode

The receiver automatically receives the data and averages the coordinates, then once it reaches the specified accuracy, it automatically sets the coordinates to a known coordinate.

For example:

| ID | minDuration(s) | accLimit(mm) | cmds | Remark |
|----|----------------|---------------|--------|---------|
| 17 | 30 | 5000 | F1 D9 06 12 08 00 1E 00 00 00 B8 0B 00 00 01 4F | Time priority |
| 18 | 90 | 2000 | F1 D9 06 12 08 00 5A 00 00 00 D0 07 00 00 51 83 | Normal mode |
| 19 | 300 | 1000 | F1 D9 06 12 08 00 2C 01 00 00 E8 03 00 00 38 6E | Accuracy priority |

### Unlock the fixed coordinates

| ID | Desc. | cmds |
|----|-------|------|
| 20 | unlock | F1 D9 06 14 0C 00 00 00 00 00 00 00 00 00 00 00 00 00 26 34 |



## RTK configuration

### For Base station

- Config output rate to 1Hz
- Disable NMEA messages output
- Enable RTCM messages output
- Enable 1005
- Enable MSM7 output for Raw Measurement data
- Config the base station's coordinates
  - CFG-SURVEY to fix
  - Programming to generate the cmds from the known xyz coordinates [1]

### For Rover station

- Config output rate to 5hz
- Disable RTCM messages output
- Disable 1005
- Disable RTCM MSM output
- Enable NMEA messages output

## Reference

- [Datagnss Sample codes](../common_sample_codes)
