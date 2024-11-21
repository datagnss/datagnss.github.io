### Enable/Disable specific message output

Menu "View"--"Messages"

![](../rtk-board/images/disable-msg.png)

| ID | Class ID | MSG ID | ID | Class ID | MSG ID |
  | ----- | :----- | :----- | :----- |
  | GGA | F0 | 00 | RTCM1005 | F8 | 05 |
  | GLL | F0 | 01 | RTCM1019 | F8 | 13 |
  | GSA | F0 | 02 | RTCM1020 | F8 | 14 |
  | GRS | F0 | 03 | RTCM1077 | F8 | 4D |
  | GSV | F0 | 04 | RTCM1087 | F8 | 57 |
  | RMC | F0 | 05 | RTCM1097 | F8 | 61 |
  | VTG | F0 | 06 | RTCM1117 | F8 | 75 |
  | ZDA | F0 | 07 | RTCM1127 | F8 | 7F |
  
  if you want to disable RTCM1087, and enable RTCM1085, need two steps:
  1. set 1087 period to 0  
  2. then set 1085 period to 1.  
  
  For,RTCM1085,msg id is 85(dec), to hex is 55.  
  So RTCM1085,Class ID is F8, and msg id is 55.  
  
  ![](../rtk-board/images/calculator.png)
  
  **above picture is screenshot of Calculator**
  
  