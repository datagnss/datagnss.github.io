---
layout: page
title: NANO toolbox User Manual
permalink: /common/nano-toolbox-user-manual/
---

<style>
    .configuration-notice { margin: 0 0 24px; padding: 12px 16px; border: 1px solid #d4a72c; border-left: 4px solid #9a6700; background: #fff8c5; }
    .markdown-body .configuration-notice p { margin: 0; }
    .markdown-body .configuration-notice p + p { margin-top: 4px; }
</style>

# NANO toolbox User Manual

**Version 1.1.0 · Windows 10 or 11 (64-bit)**

<aside class="configuration-notice" aria-label="Important receiver configuration notice">
  <p><strong>Important</strong></p>
  <p>We strongly recommend that you do not use NANO toolbox to configure the <strong>NANO RTK Receiver</strong> or any <strong>MA-10P series</strong> receiver.</p>
</aside>

Use NANO toolbox to see your receiver’s position, apply RTK corrections, and record data.

## 1. Connect your receiver

1. [Download NANO toolbox v1.1.0](https://github.com/datagnss/app-releases/releases/download/nano-toolbox-v1.1.0/NANO-toolbox-v1.1.0-windows-amd64.zip). Extract the ZIP and double-click `NANO-toolbox.exe`.
2. Power on the receiver and connect it to the computer. Under **Connection**, select the receiver’s COM port in **Device**. Set **Baud rate** to match your receiver. The toolbox starts at **230400**.
3. Click **Connect**. Look for live data in **Position**. If the receiver is still looking for satellites, it may take a moment to show a position.

![NANO toolbox connected on COM47 at 230400 baud, with live position status]({{ '/images/gnss/nano-toolbox/connection-position.png' | relative_url }})

## 2. Set up RTK corrections

With the receiver connected over serial, open **Corrections**.

- For **NTRIP**, choose `ntripcli`. Enter the server address, port, mountpoint, and any login details from your provider.
- If your provider gives you a **TCP** address instead, choose `tcpcli` and enter the address and port.

Click **Connect** on the **Corrections** page. If your provider asks for your rover position, turn on **Send GGA to caster (every 5 seconds)**. A rising frame count means corrections are coming in. Check **Position** for **RTK Fixed**.

## 3. Change receiver settings

You can skip this section if your receiver is already working as you need.

- Open **Messages** to choose which messages the receiver sends. Click **Set** to apply them. Select **Save config to flash** if you want to keep the settings after restart.
- Open **Config** to change how often the receiver sends its position. Under **Output rate**, click **Poll** to read the current setting, then choose **1 Hz**, **5 Hz**, or **10 Hz** and click **Set**. Use **Save to flash** to keep the change.

## 4. Record data or open a plot

1. Before connecting, open **Log** and turn on **Log to file**. Turn on **Log base stream to file** if you also want to save the incoming corrections.
2. Connect the receiver and, if needed, the correction source. Click **Disconnect** when you’re done to finish saving the files.
3. Open the `logs/` folder beside the toolbox. Keep each `.dat` file with its matching `.dat.tag` file.

For a live plot, put [RTKPLOT and its required files](https://github.com/tomojitakasu/RTKLIB_bin/tree/rtklib_2.4.3) beside `NANO-toolbox.exe`, connect the receiver, and click **Plot** in **Position**.

## 5. Update NANO toolbox

Disconnect the receiver, then open **About** and click **Check for Updates**. If an update is available, follow the prompts and check **About** again after the app restarts.

If your copy has no updater, close the toolbox and replace just the executable with the one from the [latest v1.1.0 ZIP](https://github.com/datagnss/app-releases/releases/tag/nano-toolbox-v1.1.0). Keep your existing settings and logs.

## 6. Troubleshooting

- **No COM port:** Check the receiver’s power and data cable. Install the USB-to-serial driver if Windows needs it.
- **The COM port won’t open:** Close any other app using that port, then try again.
- **Connected but no position:** Check the baud rate and that the receiver sends GGA on that port. Give the antenna a clear view of the sky.
- **No corrections or no RTK Fixed:** Check the server details and mountpoint. If corrections are coming in, make sure the receiver accepts them on the connected port and allow time for a fix.

If you contact [DATAGNSS](https://www.datagnss.com), include the toolbox version, receiver model, and any error shown. Don’t share `NANO-toolbox.json`: it can contain your NTRIP password.
