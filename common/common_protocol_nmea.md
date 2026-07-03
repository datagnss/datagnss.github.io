# DATAGNSS GNSS Receiver NMEA Protocol Specification (NMEA V4.11)

This document describes the NMEA 0183 V4.11 protocol implementation for DATAGNSS GNSS receivers.

The default output includes **GNGGA**, **GNGSA**, **GPGSV/GBGSV/etc.**, and **GNRMC** sent at a **1 period**.

---

## 1. Talker ID Prefixes

Sentence prefixes identify the constellation or combination of constellations to which the message applies. Talker IDs are used as the first two characters of the NMEA sentence (after the `$`). Under NMEA V4.11, the following Talker IDs are supported:

* **`GP`**: GPS / SBAS
* **`GB`**: BeiDou
* **`GL`**: GLONASS
* **`GA`**: Galileo
* **`GQ`**: QZSS
* **`GI`**: NavIC (IRNSS)
* **`GN`**: Combined multi-GNSS solution (used for `$GNGGA`, `$GNRMC`, `$GNGSA`, `$GNGLL`, `$GNGST`, `$GNGRS`, `$GNVTG`, `$GNZDA`)

---

## 2. NMEA Messages Format

Each sentence begins with `$` and terminates with `<CR><LF>`. Sentences include an 8-bit XOR checksum appended after a `*` character.

---

### 2.1 GNGGA - Global Positioning System Fix Data

Provides UTC time, position, and fix-related data.

**Format:**
```
$GNGGA,hhmmss.fff,llll.lllllll,a,yyyyy.yyyyyyy,a,x,xx,x.x,x.x,M,x.x,M,x.x,xxxx*hh<CR><LF>
```

#### GNGGA Field Descriptions

| Field # | Format / Name | Data Type | Units | Description |
| :---: | :--- | :---: | :---: | :--- |
| **0** | `$GNGGA` | String | - | NMEA Sentence Header |
| **1** | `hhmmss.fff` | String | UTC | UTC Time (HourMinuteSecond.fraction) |
| **2** | `llll.lllllll` | String | Degrees | Latitude: `ddmm.mmmmmmm` (Extended 7 decimals for high-precision series) |
| **3** | `a` | Character | - | Latitude hemisphere: `N` = North, `S` = South |
| **4** | `yyyyy.yyyyyyy` | String | Degrees | Longitude: `dddmm.mmmmmmm` (Extended 7 decimals for high-precision series) |
| **5** | `a` | Character | - | Longitude hemisphere: `E` = East, `W` = West |
| **6** | `x` | Integer | - | **GNSS Quality Indicator** (see table below) |
| **7** | `xx` | Integer | - | Number of satellites in use (`00` to `40`) |
| **8** | `x.x` | Float | - | Horizontal Dilution of Precision (HDOP) |
| **9** | `x.x` | Float | Meters | Antenna Altitude above/below mean-sea-level (geoid) |
| **10** | `M` | Character | - | Altitude Units: `M` = Meters |
| **11** | `x.x` | Float | Meters | Geoidal separation (WGS-84 earth ellipsoid to MSL). Negative `-` means MSL is below ellipsoid. |
| **12** | `M` | Character | - | Geoidal Separation Units: `M` = Meters |
| **13** | `x.x` | Float | Seconds | Age of differential GNSS data. Seconds since last SC104 Type 1 or 9 update. Null when DGPS/RTK is not used. |
| **14** | `xxxx` | Integer | - | Differential reference station ID (`0000` to `1023`) |
| **15** | `*hh` | Checksum | - | Hexadecimal checksum |

#### GNSS Quality Indicators (Field 6)

| Value | Status Description |
| :---: | :--- |
| **0** | Fix not available or invalid |
| **1** | GNSS fix (SPS / Autonomous) |
| **2** | Differential GNSS fix (DGPS) |
| **3** | PPS fix |
| **4** | Real Time Kinematic (RTK Fixed or CLAS RTK) |
| **5** | Float RTK(CLAS RTK Float) |
| **6** | Estimated (Dead Reckoning) |
| **7** | Manual input mode |
| **8** | Simulation mode |

**Example:**
`$GNGGA,071113.000,3957.7995312,N,11619.0286230,E,4,16,0.99,103.965,M,-8.408,M,1.0,4042*40`

---

### 2.2 GNGSA - GNSS DOP and Active Satellites

Reports the receiver's operating mode, active satellites used in the navigation solution, and Dilution of Precision (DOP) values. The combined `$GNGSA` sentence is output multiple times per cycle (once per active constellation) with a trailing System ID.

**Format:**
```
$GNGSA,a,m,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x.x,x.x,x.x,h*hh<CR><LF>
```

#### GNGSA Field Descriptions

| Field # | Format / Name | Data Type | Units | Description |
| :---: | :--- | :---: | :---: | :--- |
| **0** | `$GNGSA` | String | - | NMEA Sentence Header |
| **1** | `a` | Character | - | **Selection Mode**: `M` = Manual (forced 2D/3D), `A` = Automatic |
| **2** | `m` | Integer | - | **Mode**: `1` = No fix, `2` = 2D fix, `3` = 3D fix |
| **3-14** | `x` (12 fields) | Integer | - | Satellite IDs (SVIDs) used in the position solution. Left-aligned, unused fields are empty/null. |
| **15** | `x.x` | Float | - | Position Dilution of Precision (PDOP) |
| **16** | `x.x` | Float | - | Horizontal Dilution of Precision (HDOP) |
| **17** | `x.x` | Float | - | Vertical Dilution of Precision (VDOP) |
| **18** | `h` | Integer | - | **System ID** (indicates which constellation this sentence describes, see table below) |
| **19** | `*hh` | Checksum | - | Hexadecimal checksum |

#### System ID Table (Field `h`)
| System ID | Constellation |
| :---: | :--- |
| **1** | GPS |
| **2** | GLONASS |
| **3** | GALILEO |
| **4** | BEIDOU |
| **5** | QZSS |
| **6** | NavIC (IRNSS) |

#### Satellite ID (SVID) Range Mapping
SVIDs are mapped directly to their true constellation PRN ranges:

| Constellation | SVID Range |
| :--- | :--- |
| **GPS** | `1` - `32` |
| **GLONASS** | `65` - `96` |
| **GALILEO** | `1` - `36` |
| **BEIDOU** | `1` - `63` |
| **QZSS** | `1` - `10` |
| **NavIC (IRNSS)** | `1` - `18` |
| **SBAS** | `40` - `54` (Original PRNs 120-141 offset by `-87`) |

**Examples:**
`$GNGSA,A,3,22,26,27,31,32,04,16,29,,,,,1.32,0.77,1.07,1*0D` *(GPS)*
`$GNGSA,A,3,82,79,,,,,,,,,,,1.91,0.76,1.76,2*0E` *(GLONASS)*
`$GNGSA,A,3,01,04,09,31,19,,,,,,,,1.32,0.77,1.07,3*03` *(Galileo)*
`$GNGSA,A,3,29,09,16,40,39,10,36,45,59,60,35,,1.91,0.76,1.76,4*0E` *(BeiDou)*
`$GNGSA,A,3,02,04,07,,,,,,,,,,1.32,0.77,1.07,5*02` *(QZSS)*
`$GNGSA,A,3,04,07,03,09,05,02,,,,,,,2.41,1.40,1.96,6*04` *(NavIC)*

---

### 2.3 GSV - GNSS Satellites in View

Reports visible satellites, including SVID, elevation, azimuth, and SNR (C/N0). Separate GSV lists are output per constellation (Talker ID) and signal frequency (Signal ID).

**Format:**
```
$<Talker>GSV,total_msg,msg_num,total_sv,svid_1,elev_1,azim_1,snr_1,...,svid_4,elev_4,azim_4,snr_4,h*hh<CR><LF>
```
*(Talkers: `$GPGSV` for GPS/SBAS, `$GBGSV` for BeiDou, `$GLGSV` for GLONASS, `$GAGSV` for Galileo, `$GQGSV` for QZSS, `$GIGSV` for NavIC)*

#### GSV Field Descriptions

| Field # | Format / Name | Data Type | Units | Description |
| :---: | :--- | :---: | :---: | :--- |
| **0** | `$<Talker>GSV` | String | - | NMEA Sentence Header |
| **1** | `total_msg` | Integer | - | Total number of GSV messages in this signal group |
| **2** | `msg_num` | Integer | - | Message sequence number within the current group (1-indexed) |
| **3** | `total_sv` | Integer | - | Total number of satellites in view for this constellation |
| **4** | `svid_1` | Integer | - | Satellite #1 PRN/ID number (with leading zero) |
| **5** | `elev_1` | Integer | Degrees | Satellite #1 Elevation (`00` to `90` degrees) |
| **6** | `azim_1` | Integer | Degrees | Satellite #1 Azimuth to True North (`000` to `359` degrees) |
| **7** | `snr_1` | Integer | dB-Hz | Satellite #1 SNR / C/N0 (`00` to `99`), null when not tracked |
| **8-19** | - | - | - | Repeats SVID, Elevation, Azimuth, and SNR for Satellites 2, 3, and 4. |
| **20** | `h` | Character / Hex | - | **Signal ID** (defines the signal frequency band, see table below) |
| **21** | `*hh` | Checksum | - | Hexadecimal checksum |

#### GSV Signal ID Table (Field `h`)

| Constellation | Signal ID | Signal Name |
| :--- | :---: | :--- |
| **GPS** (GNSS ID 1) | **`0`**<br>**`1`**<br>**`5`**<br>**`6`**<br>**`7`**<br>**`8`** | All signals<br>L1 C/A<br>L2CM<br>L2CL<br>L5-I<br>L5-Q |
| **GLONASS** (GNSS ID 2) | **`0`**<br>**`1`**<br>**`3`** | All signals<br>L1 C/A<br>L2 C/A |
| **GALILEO** (GNSS ID 3) | **`0`**<br>**`1`**<br>**`2`**<br>**`3`**<br>**`4`**<br>**`5`**<br>**`7`** | All signals<br>E5a<br>E5b<br>E5a+b<br>E6-A<br>E6-BC<br>L1-BC |
| **BEIDOU** (GNSS ID 4) | **`0`**<br>**`1`**<br>**`2`**<br>**`3`**<br>**`4`**<br>**`5`**<br>**`6`**<br>**`7`**<br>**`8`**<br>**`9`**<br>**`A`**<br>**`B`**<br>**`C`** | All signals<br>B1I<br>B1Q<br>B1C<br>B1A<br>B2-a<br>B2-b<br>B2 a+b<br>B3I<br>B3Q<br>B3A<br>B2I<br>B2Q |
| **QZSS** (GNSS ID 5) | **`0`**<br>**`1`**<br>**`2`**<br>**`3`**<br>**`4`**<br>**`5`**<br>**`6`**<br>**`7`**<br>**`8`**<br>**`9`**<br>**`A`** | All signals<br>L1 C/A<br>L1C (D)<br>L1C (P)<br>LIS<br>L2C-M<br>L2C-L<br>L5-I<br>L5-Q<br>L6D<br>L6E |
| **NavIC (IRNSS)** (GNSS ID 6) | **`0`**<br>**`1`**<br>**`5`** | All signals<br>L5-SPS<br>L1-SPS |

**Examples:**
`$GPGSV,3,2,12,7,40,325,37,9,35,254,37,4,33,209,36,1,26,175,33,1*61` *(GPS L1 C/A)*
`$GPGSV,3,3,12,8,65,1,44,9,35,254,39,4,33,209,39,1,26,175,37,8*65` *(GPS L5-Q)*
`$GQGSV,2,1,06,195,62,100,38,199,59,149,33,194,56,55,38,1*56` *(QZSS L1 C/A)*
`$GQGSV,2,2,06,195,62,100,42,199,59,149,43,194,56,55,41,8*58` *(QZSS L5-Q)*
`$GLGSV,1,1,02,82,66,168,40,79,46,33,39,1*4D` *(GLONASS L1 C/A)*
`$GBGSV,5,4,17,29,83,78,43,40,57,340,40,39,55,181,40,36,51,84,41,5*76` *(BeiDou B2-a)*

---

### 2.4 GNRMC - Recommended Minimum Specific GNSS Data

Provides key time, date, position, speed, and course data.

**Format:**
```
$GNRMC,hhmmss.fff,A,llll.lllllll,a,yyyyy.yyyyyyy,a,x.x,x.x,ddmmyy,x.x,a,a,a*hh<CR><LF>
```

#### GNRMC Field Descriptions

| Field # | Format / Name | Data Type | Units | Description |
| :---: | :--- | :---: | :---: | :--- |
| **0** | `$GNRMC` | String | - | NMEA Sentence Header |
| **1** | `hhmmss.fff` | String | UTC | UTC Time (HourMinuteSecond.fraction) |
| **2** | `A` | Character | - | **Status**: `A` = Valid Data, `V` = Navigation receiver warning |
| **3** | `llll.lllllll` | String | Degrees | Latitude: `ddmm.mmmmmmm` (Extended 7 decimals for high-precision series) |
| **4** | `a` | Character | - | Hemisphere: `N` = North, `S` = South |
| **5** | `yyyyy.yyyyyyy` | String | Degrees | Longitude: `dddmm.mmmmmmm` (Extended 7 decimals for high-precision series) |
| **6** | `a` | Character | - | Hemisphere: `E` = East, `W` = West |
| **7** | `x.x` | Float | Knots | Speed over ground |
| **8** | `x.x` | Float | Degrees | Course over ground (True Track, degrees relative to True North) |
| **9** | `ddmmyy` | String | UTC | UTC Date (DayMonthYear) |
| **10** | `x.x` | Float | Degrees | Magnetic variation (null/empty on DATAGNSS receivers) |
| **11** | `a` | Character | - | Magnetic variation direction: `E`/`W` (null/empty) |
| **12** | `a` | Character | - | **Mode Indicator** (see table below) |
| **13** | `a` | Character | - | **navStatus**: `S` = Safe / Valid |
| **14** | `*hh` | Checksum | - | Hexadecimal checksum |

#### Mode Indicators (Field 12)
* **`A`**: Autonomous (GNSS fix)
* **`D`**: Differential GNSS fix (DGPS)
* **`F`**: Float RTK
* **`P`**: Precise
* **`R`**: Real Time Kinematic (Fixed RTK)
* **`V`**: Invalid (No fix)

**Example:**
`$GNRMC,115522.000,A,4006.20885,N,11628.14498,E,0.000,0.50,041215,,,A,S*30`

---

### 2.5 GNVTG - Course over Ground and Ground Speed

Reports the actual course and speed relative to the ground.

**Format:**
```
$GNVTG,x.x,T,x.x,M,x.x,N,x.x,K,a*hh<CR><LF>
```

#### GNVTG Field Descriptions

| Field # | Format / Name | Data Type | Units | Description |
| :---: | :--- | :---: | :---: | :--- |
| **0** | `$GNVTG` | String | - | NMEA Sentence Header |
| **1** | `x.x` | Float | Degrees | Track Degrees (True course over ground) |
| **2** | `T` | Character | - | True Track unit indicator: `T` = True |
| **3** | `x.x` | Float | Degrees | Track Degrees (Magnetic course over ground, null/empty on DATAGNSS receivers) |
| **4** | `M` | Character | - | Magnetic Track unit indicator: `M` = Magnetic |
| **5** | `x.x` | Float | Knots | Speed over ground |
| **6** | `N` | Character | - | Speed unit indicator: `N` = Knots |
| **7** | `x.x` | Float | km/h | Speed over ground |
| **8** | `K` | Character | - | Speed unit indicator: `K` = Kilometers per hour |
| **9** | `a` | Character | - | **Mode Indicator**: `A` = Autonomous, `D` = Differential, `V` = Invalid |
| **10** | `*hh` | Checksum | - | Hexadecimal checksum |

**Example:**
`$GNVTG,0.50,T,,M,0.000,N,0.000,K,A*26`

---

### 2.6 GNZDA - Time & Date

Provides UTC time, day, month, year, and local timezone offset.

**Format:**
```
$GNZDA,hhmmss.fff,dd,mm,yyyy,xx,yy*hh<CR><LF>
```

#### GNZDA Field Descriptions

| Field # | Format / Name | Data Type | Units | Description |
| :---: | :--- | :---: | :---: | :--- |
| **0** | `$GNZDA` | String | - | NMEA Sentence Header |
| **1** | `hhmmss.fff` | String | UTC | UTC Time (HourMinuteSecond.fraction) |
| **2** | `dd` | Integer | - | UTC Day (01 - 31) |
| **3** | `mm` | Integer | - | UTC Month (01 - 12) |
| **4** | `yyyy` | Integer | - | UTC Year (4-digit format) |
| **5** | `xx` | Integer | Hours | Local zone hours offset (`-13` to `13`) |
| **6** | `yy` | Integer | Minutes | Local zone minutes offset (`0` to `59`) |
| **7** | `*hh` | Checksum | - | Hexadecimal checksum |

**Example:**
`$GNZDA,072319.000,14,10,2015,-7,45*5F`

---

### 2.7 GNGST - GNSS Pseudorange Error Statistics

Reports statistical quality metrics for the computed position solution.

**Format:**
```
$GNGST,hhmmss.fff,rms,major,minor,orient,lat_std,lon_std,alt_std*hh<CR><LF>
```

#### GNGST Field Descriptions

| Field # | Format / Name | Data Type | Units | Description |
| :---: | :--- | :---: | :---: | :--- |
| **0** | `$GNGST` | String | - | NMEA Sentence Header |
| **1** | `hhmmss.fff` | String | UTC | UTC Time (HourMinuteSecond.fraction) |
| **2** | `rms` | Float | Meters | RMS value of the standard deviation of range inputs |
| **3** | `major` | Float | Meters | Standard deviation of semi-major axis of error ellipse |
| **4** | `minor` | Float | Meters | Standard deviation of semi-minor axis of error ellipse |
| **5** | `orient` | Float | Degrees | Orientation of semi-major axis (degrees from True North) |
| **6** | `lat_std` | Float | Meters | Standard deviation of latitude error |
| **7** | `lon_std` | Float | Meters | Standard deviation of longitude error |
| **8** | `alt_std` | Float | Meters | Standard deviation of altitude error |
| **9** | `*hh` | Checksum | - | Hexadecimal checksum |

**Example:**
`$GPGST,082356.00,1.8,,,,1.7,1.3,2.2*7E`

