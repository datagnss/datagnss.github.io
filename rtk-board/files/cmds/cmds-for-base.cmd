# 1Hz
!HEX F1 D9 06 44 10 00 00 00 01 00 01 00 00 00 E8 03 00 00 00 00 00 00 47 13
!WAIT 100

# cfg-navsat, L1+5, all
!HEX F1 D9 06 0C 04 00 35 82 10 04 E1 1A

# disable NMEA,keep rmc output
!HEX F1 D9 06 01 03 00 F0 00 00 FA 0F	
!HEX F1 D9 06 01 03 00 F0 01 00 FB 11		
!HEX F1 D9 06 01 03 00 F0 02 00 FC 13		
!HEX F1 D9 06 01 03 00 F0 04 00 FE 17		
!HEX F1 D9 06 01 03 00 F0 05 00 FF 19		
!HEX F1 D9 06 01 03 00 F0 06 00 00 1B		
!HEX F1 D9 06 01 03 00 F0 07 00 01 1D	
!HEX F1 D9 06 01 03 00 F0 08 00 02 1F		
!HEX F1 D9 06 01 03 00 F0 20 00 1A 4F
!WAIT 200
!HEX F1 D9 06 01 04 00 F0 05 01 FF 00 1F

# enable RTCM
#  disable EPHEM
!HEX F1 D9 06 01 03 00 F8 13 00 15 4D 
!HEX F1 D9 06 01 03 00 F8 14 00 16 4F 
!HEX F1 D9 06 01 03 00 F8 2A 00 2C 7B 
!HEX F1 D9 06 01 03 00 F8 2C 00 2E 7F 
!HEX F1 D9 06 01 03 00 F8 2D 00 2F 81
!WAIT 200

#  enable RTCM raw data,MSM7
!HEX F1 D9 06 01 04 00 F8 4D 01 FF 50 17
!WAIT 100
!HEX F1 D9 06 01 04 00 F8 57 01 FF 5A 35
!WAIT 100
!HEX F1 D9 06 01 04 00 F8 61 01 FF 64 53
!WAIT 100
!HEX F1 D9 06 01 04 00 F8 75 01 FF 78 8F
!WAIT 100
!HEX F1 D9 06 01 04 00 F8 7F 01 FF 82 AD	
!WAIT 100
!HEX F1 D9 06 01 04 00 F8 05 01 FF 08 3F

# CFG-SURVEY, 30s,6000mm
#!HEX F1 D9 06 12 08 00 1E 00 00 00 70 17 00 00 C5 53
# 90s, 10000mm
!HEX F1 D9 06 12 08 00 5A 00 00 00 10 27 00 00 B1 E3

# CFG-SAVE
!HEX F1 D9 06 09 08 00 00 00 00 00 07 00 00 00 1E 17