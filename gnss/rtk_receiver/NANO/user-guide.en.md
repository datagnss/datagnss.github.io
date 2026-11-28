---
title: NANO RTK Flasher User Guide
permalink: /gnss/rtk_receiver/NANO/nano-rtk-flasher-user-guide/
---

# NANO RTK Flasher User Guide

Use NANO RTK Flasher to update the firmware on your NANO RTK device and view its startup messages afterward. Firmware is the software that runs inside your device. You do not need to enter commands or set a flashing address.

## Before you start

- Connect your device to the computer with a USB data cable.
- Have the complete firmware file (`.bin`) for your device model, or a firmware download link provided by DATAGNSS.
- Close other applications that may be using the device.

On Windows, extract the software package and open `nano-rtk-flasher.exe`. If possible, connect only the device you want to update.

## Update your device

### Button overview

![Main controls: Find, Connect, Local file, Browse, Flash firmware, and Stop Monitor](../image/ui-local-annotated-en.png)

Follow the numbers: **1 Find → 2 Connect → 3 Local file → 4 Browse… → 5 Flash firmware**. After the update, use **6 Stop Monitor** when you want to release the connection or update another device.

The screenshots show v0.0.6; newer versions may have small visual differences. This screenshot shows a device found but not yet connected, with no firmware file selected. The flash button is therefore disabled. COM46 and the firmware version are examples; use the device details shown on your own computer.

### Step 1 Find your device

In **01 Device**, leave **Auto Detect** selected and click **Find**.

The list shows confirmed devices and their current firmware versions. A single confirmed device is selected automatically. If several devices appear, click the one you want to update.

**Find discovers the device. You still need to click Connect before flashing.**

### Step 2 Connect

The device must enter download mode before firmware can be written. In this application, this happens during **Connect**, before you click **Flash firmware**.

**NANO v3.5** enters download mode automatically when you click **Connect**.

**For NANO v3.2, press and hold the BOOT button on the device for at least 2 seconds at this step to enter download mode.**

Click **Connect** and wait for **Connected** in the status area. The button changes to **Disconnect** when the connection is ready.

Your device may temporarily stop its normal operation while connecting. Wait for the connection to complete.

### Step 3 Choose your firmware

In **02 Firmware**, choose one of these sources:

| Firmware source | What to do |
| --- | --- |
| File already on your computer | Select **Local file**, click **Browse…**, and choose the `.bin` file. |
| Firmware download link | Select **Download URL**, paste the link, and click **Download…**. When the download finishes, choose where to save the file and save it. |

Use a direct link to the firmware file, rather than a product page or download webpage. **Firmware saved · Ready to flash** means the file has been saved and is ready to use.

![Download controls: Select Download URL, paste a link, download and save, then flash](../image/ui-download-annotated-en.png)

For a download link, follow **1 Download URL → 2 Paste firmware link → 3 Download… and save → 4 Flash firmware**. Connect your device before flashing.

**Downloading does not update the device automatically.** You must click **Flash firmware** afterward. If you switch sources, select or download the file again. Changing the download link also requires a new download.

### Step 4 Flash the firmware

Check that you have selected the correct device and firmware file, then click **Flash firmware**.

The application writes the firmware, checks the result, and restarts the device. Keep the USB cable connected and the device powered throughout the process. Even when the progress bar reaches the end, wait for the checks and restart to finish.

For a normal update, use **Flash firmware** directly. Use **Erase Flash…** only when DATAGNSS instructions ask you to clear the device.

### Step 5 Check the result

After flashing and verification succeed, the status shows **Download successful · Firmware flashed and verified**. The application automatically opens **Serial monitor** and displays messages from the restarted device. Use these messages to check that it starts normally. The running firmware version also updates when the device reports it during startup.

To check the new firmware version, click **Stop Monitor**. The application releases the connection and tries to read the version again. If no version appears, allow the device to finish starting, then click **Find**.

## View and copy device information

The window contains device controls, firmware selection, operation status, and logs. In a smaller window, scroll within the upper control area to reach the remaining options.

| Control | What it does |
| --- | --- |
| **Operation log** | Shows discovery, connection, download, and flashing records. Check this tab if an operation fails. |
| **Serial monitor** | Shows messages from the device after a successful firmware update. |
| **Follow** | Scrolls to the latest messages. Turn it off to read earlier output. |
| **Copy** | Copies the current tab's log so you can share it with support. |
| **Clear** | Clears the displayed content in the current tab. |
| **Stop Monitor** | Stops receiving device messages and releases the connection for another update or application. |

## Connect manually

Auto Detect needs a response from the device's running firmware. If the firmware is not responding, try a manual connection:

If you have already placed the device in download mode using its BOOT button, Auto Detect may not confirm a firmware version. Clear **Auto Detect**, select the port manually, and use **No reset (manual boot)** to connect without another automatic reset.

1. Clear **Auto Detect**.
2. Click **Find** to refresh the ports, then choose your device under **Serial port**.
3. Normally, leave **Reset strategy** set to **Default (USB bridge)**.
4. Click **Connect**, then choose and flash the firmware as described above.

Use the other reset options only when directed by your device instructions or support: **USB Serial/JTAG** is for that USB connection type; **No reset (manual boot)** is for a device already placed in download mode manually.

## Erase the device

**Erase Flash… removes all firmware and device settings.** A confirmation appears before erasing. Choose **Cancel** if you do not need to erase the device.

Before confirming, record any settings you need to keep and have the correct firmware ready. After erasing, the device stays connected so you can select a firmware file and click **Flash firmware**.

## Update NANO RTK Flasher

On Windows release builds, click **Check for Updates…** in the upper-right corner to check for a newer application version. If an update is available, review the version and choose **Download and restart**. The application downloads the update and restarts.

First stop the monitor with **Stop Monitor**, or disconnect an active device connection with **Disconnect**. The small progress bar at the top shows application update progress; the main progress bar shows firmware downloads and device operations.

This updates the tool on your computer. To update your device's firmware, use **Flash firmware** separately. Development builds do not offer online updates, and macOS does not currently support in-app updating.

## Troubleshooting

### No device appears after Find

Check that your USB cable supports data, the device has power, and other applications are not using it. Reconnect the USB cable and click **Find** again. On Windows, make sure the device driver is installed and the device's **SERIAL-B** or **USB-Enhanced-SERIAL CH343** port is recognized by the system. Other port names do not appear in this application's Windows port list.

If you see **Firmware version unconfirmed**, the application has not read a valid version response. Try the manual connection steps above.

### Connect or Flash firmware is disabled

**Connect** needs a selected device. **Flash firmware** needs an active device connection and a selected local file, or a completed download that has been saved. Some controls are also unavailable while an operation or serial monitor is running.

### The connection fails or the port is busy

Close other applications using the device and retry. Before another update, click **Stop Monitor**. If the problem continues, reconnect USB and check that the correct device port is selected.

### A download fails or you want to cancel it

Check your internet connection and firmware link, then try again. Click **Cancel download** to stop a download. If you cancel the download or save dialog, download and save the file again before flashing.

### Flashing fails

Check **Operation log** for the error message. Confirm that the firmware is intended for your device and check USB connectivity and power. When contacting support, click **Copy** to copy the operation log and include your device model and firmware filename.

### Update again or use another device

Click **Stop Monitor**. If **Disconnect** is still shown, click it to disconnect. Connect the next device and repeat **Find → Connect → Select firmware → Flash firmware**.
