---
title: "Config RTK receiver using goNANO"
date: 2025-8
---

# Config RTK Receiver using goNANO

## Overview

### Download

Download goNANO from [HERE](../assets/software/goNANO.zip)

## Quick guide

1. Open "Terminal" or "cmd" in Windows.

2. unzip the downloaded goNANO.zip, then cd this folder in terminal.

3. Find the serial port number in Devices manager of Windows.

4. Run goNANO.exe, with parameters: -d serial_port_number -b 230400, like:

``` shell
PS D:\goNANO> .\goNANO.exe -d com32 -b 230400
Please select working mode
1. Base station mode
2. Rover mode
3. Custom command file
Please enter your choice (1-3): 1

```

5. Then choose 1, run it.

``` shell
PS D:\goNANO> .\goNANO.exe -d com32 -b 230400
Please select working mode
1. Base station mode
2. Rover mode
3. Custom command file
Please enter your choice (1-3): 1
starting goRTKBase: device=com32 baud=230400 command_file=conf\config_base.cmd interval=100ms
loading command file conf\config_base.cmd
BASE MODE CONFIGURATION
setup base station receiver configuration
set output rate to 1Hz
disable NMEA messages
enable RTCM/EPHEM data
enable RTCM/MSM7 data
enable RTCM Type 1005 to output antenna position
setup cfg-survey to estimate position
save configuration to receiver
end of base station configuration
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
received 0x0501 ALS packet
ALS ACK matched: sent 23 commands, received 23 ACKs
command/ack cycle completed, configured successfully.
exiting app.
``` 

6. After the settings are completed, the mode will be saved to the receiver. The next time it is turned on, it will automatically enter the set mode.
