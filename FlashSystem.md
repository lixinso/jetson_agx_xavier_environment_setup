# Flash Jetson AGX Xavier Environment on Mac (Ubuntu 18 VM with Virtual Box)

## Notes

Network not required.

SD Card not required

JetPack 4.4

## Steps

- Install Virtual Box on MacBook. Then Install Ubuntu 18 in it.

- Install SDK Manager in host Ubuntu 18 in VM

- Remove SD Card from Jetson AGX Xavier if you have

- Connect USB-C to USB to Mac

![Connection02](res/agx_connection_02.jpg	)
![Connection02](res/agx_connection_03.jpg	)

- Recovery Mode

Connect Jetson AGX Xavier to Power, but power off.

    - Press and hold the middle (force recovery) button.
    - Press and hold the left (power) button.
    - Release both button.


- Virtual Box Ubuntu 18 Configuration

Config the VM before power on VM. Bridge. USB Filter.

![VMConfig1](res/agx_vm_01.jpg)
![VMConfig2](res/agx_vm_02.jpg)

- Manual Flush

![Flash01](res/agx_sdk_ui_1.jpg)
![Flash01](res/agx_sdk_ui_2.jpg)
![Flash01](res/agx_sdk_ui_3.jpg)

# References

- https://www.youtube.com/watch?v=s1QDsa6SzuQ
- https://cudaeducation.com/jetsonxavier/
