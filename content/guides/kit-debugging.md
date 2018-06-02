---
title: Testing and Debugging on the Developer Kit
---

## Requirements

You will need:

- Raspberry Pi
- Pi power cable / power adapter
- Charged LiPo battery
- Power board
- Micro USB cable for connecting the power board to the pi
- USB Flash Drive
- Monitor with HDMI connection
- Keyboard
- SD card loaded with `pi-image`

Also useful:

- Webcam
- Motor board
- Servo board
- Battery charger
- Any other hardware you intend to test

## Logging in

- Assemble the kit using the [kit assembly instructions](https://docs.sourcebots.org/tutorials/kit-assembly/).
- Additionally, connect the HDMI cable from the monitor, and a keyboard.
- Boot the kit using the power button on the power board.
{{% notice info %}} Note: If using a separate power supply, power on the Power Board first, then connect the pi power cable. {{% /notice %}}
- When the pi has booted, the start button on the power board should start flashing as usual.
- You should also get a login prompt on the screen.
    - There are two user accounts.
        - `root`
        - `pi` - This is what you should usually use.
    - Both user accounts have the password `beeeeees`, bees with 6 `e`'s.
- After logging in, you will get a bash prompt `pi@raspberrypi`, this can be used to issue commands to the system.

## Using the Terminal to debug

### Systemd logs

If you start the code using the start button, you will notice that no output is logged to the screen. This is because the debug logs are sent to the `systemd` log
by default.

- You can view the systemd log for a module by executing: `journalctl -u <module>`.
    - This will show the logs for module, including what happened on previous boots.
- It can also be useful to see the logs live as the code executes: `journalctl -fu <module>`
- It is helpful to use this for debugging the following modules:
    - `runusb` - This service runs the code on the usb
    - `robotd` - This service abstracts the hardware of the robot.

### Running code directly

It can be useful to run code directly, rather than under the `runusb` service. This will run the code as the user that you are logged in as, and outside of the `systemd-nspawn` container that `runusb` executes them in.

- Before starting, you will probably want to stop the `runusb` service. This stops multiple versions of the code executing simultaneously.
- Stop runusb: `sudo systemctl stop runusb`
- When the usb drive is plugged in, it is mounted by `usbmount` as `/media/usb0`, `/media/usb1`, `/media/usb2`, etc.
- You can run the code using python: `python3 main.py`
    - The start button will probably need to be pressed in order to start the code, it will flash as usual once the program has started. An exception to this is if the code has the `wait_for_start_button=False`, in this case, the code will start executing immediately. 
    - The logs that would usually appear under runusb are printed to the console (stdout).

Sometimes when running code directly, you may find it helpful to restart `robotd`: `sudo systemctl restart robotd`

### Testing new libraries.

When releasing updates, it is important to ensure that new versions of the libraries behave as expected.

We can install an updated version of the library using a `.deb` package. The instructions for this can vary by module, but most only require a couple of commands:

- Firstly, copy the new code to a usb drive.
- Then, copy the code from the usb drive to the home directory on the pi.
- Now, build the Debian package: `debuild -uc -us`
- The Debian package will be saved in the parent directory.
- We can then install the new package: `sudo dpkg -i file.deb`
