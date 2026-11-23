---
title: Update NANO RTK Receiver V3.2 over USB
permalink: /gnss/rtk_receiver/NANO/nano-flasher-for-v32/
---

# Update NANO RTK Receiver V3.2 over USB

## Do you need to update?

If your NANO works as expected, you do not need to update it just because a newer version exists.

Use this USB procedure only for a **NANO RTK Receiver V3.2 running 1.0.5 firmware with no Firmware Update page**. Check the hardware revision and installed firmware before continuing. If the receiver is on **1.0.7 or later and has Firmware Update in the web interface**, use that page and the approved web package instead. If the hardware revision is uncertain or your receiver falls outside this scope, confirm the correct procedure with DATAGNSS before proceeding.

## Before you start

- [Download NANO RTK Flasher v0.0.8 for Windows x64](https://github.com/datagnss/app-releases/releases/download/goesp32-v0.0.8/nano-rtk-flasher-v0.0.8-windows-amd64.zip) and extract the ZIP. Have a USB-C **data** cable ready. This is a Windows procedure. The separate Mac ARM64 package is an experimental build without Developer ID signing or notarization. The flasher download does not include receiver firmware.
- Record your current firmware version and any settings you will need to re-enter. A combined USB image can overwrite stored settings even without using **Erase Flash**.
- Download the [NANO V3.2 USB firmware ZIP]({{ '/nano-s3-rtk/nano.rtk.15.v3_2.1.0.8.1496.fffbdd.zip' | relative_url }}) in your browser and extract it. The archive contains `nano.rtk.15.v3_2.1.0.8.1496.fffbdd.bin`. Use this extracted file, not the ZIP itself, the `ff5ccc` web-update `.dgfw` package, a V3.5 image, or an application-only `.bin`.

## Before connecting the receiver

1. Unplug the USB cable and disconnect any external power, then open the receiver's top cover.
2. Locate the four-position DIP switch block. Check the printed numbers and **ON** marking, and note the original switch positions.
3. Move switches **1 and 2 toward the side marked ON**. Move switches **3 and 4 away from that side (OFF)**. Follow the marking on the block, not the left or right side of the photo. If your board does not match the photo or markings, stop and check with DATAGNSS.
4. Locate the **BOOT** button before connecting the USB cable. The DIP positions prepare the board; you still need to press **BOOT** during **Connect** below.

![NANO V3.2 mainboard showing the four-position DIP switch block and the BOOT button]({{ '/images/rtk/nano/v32-mb.png' | relative_url }})

*NANO V3.2 mainboard: locate the DIP block by its printed ON marking and numbers 1–4, and the button marked Boot beside it. Use the photo to identify the controls; set the switches as described above.*

## Connect and flash

1. Run `nano-rtk-flasher.exe` from the extracted Windows package. The window is named **NANO RTK Flasher**. Connect the NANO to a USB port on the PC with the USB-C data cable.
2. In **01 Device**, leave **Auto Detect** checked and click **Find**. If more than one device appears, select the NANO you want to update. **Find** identifies the receiver; it does not put the receiver in download mode.
3. Confirm the selected port and click **Connect**. During this step, press and hold the receiver's **BOOT** button for **at least 2 seconds** to enter download mode. Wait for **Connected** before continuing. The automatic entry described for V3.5 does not apply to V3.2.
4. In **02 Firmware**, select **Local file**, then click **Browse…**. In **Select a Combined Firmware Image**, choose the extracted `nano.rtk.15.v3_2.1.0.8.1496.fffbdd.bin`. Selecting the file does not write to the receiver.
5. Confirm the selected filename, then click **Flash firmware**. Do not click **Erase Flash**. Leave the USB cable and power connected while the tool writes, verifies and resets the receiver. If any stage fails, record the exact error and obtain the approved recovery instructions rather than erasing or retrying blindly.

## If Find cannot confirm the receiver

If you already used **BOOT** to place the receiver in download mode, **Auto Detect** may not be able to read the running firmware version. Clear **Auto Detect**, click **Find** to refresh the port list, select your receiver's known port under **Serial port**, set **Reset strategy** to **No reset (manual boot)**, and click **Connect**. Use **No reset (manual boot)** only if the receiver is already in download mode. If you cannot identify the correct port, stop and contact DATAGNSS.

## Verify normal operation

Wait for **Firmware flashed and verified**. A completed file download or full progress bar alone is not a success message. **Serial monitor** opens after the receiver restarts; check that it starts normally. Click **Stop Monitor** to release the port and refresh the running firmware version. If it does not appear, let the receiver finish starting and click **Find** again. Check for `1.0.8.1496.fffbdd` and re-enter any settings you need. If you opened the cover, disconnect USB and any external power before refitting it.

See the [V3.2 and V3.5 hardware identification guide](/gnss/rtk_receiver/NANO/find-v32-and-v35/) if you are unsure which procedure applies.
