Nvidia Jetson AGX Xavier (32G) Environment Setup

## Hardware

Included in the package
- Board (With System already installed)
- Battery

Bring your own.
- WIFI [EDUP Mini WiFi Dongle for pcDuino v1/Raspberry Pi
](https://www.amazon.com/gp/product/B00JXP7QAA/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)  :Not the recommended one
- SD Card [Samsung (MB-ME512GA/AM) 512GB 100MB/s (U3) MicroSDXC Evo Select Memory Card with Adapter
](https://www.amazon.com/gp/product/B07MKSGZM6/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1)

## Start Hardware

- Connect Power supply
- Connect Monitor with HDMI
- Connect USB-C to USB Cabel (in the package), extend with a USB hub (1 USB to 4 USB, bring your own)
- Connect WIFI Dongle on USB hub
- Connect USB Keyboard/Mouse on USB hub
- Power On

## Setup In System
- Format SDCARD to FAT with UI (Disks) in the Nvidia Ubuntu system.  /data/ 100G, /data2/ 400G

### Setup to monitor host GPU

```
$ sudo apt install python3-pip
$ sudo pip3 install jetson-stats
$ jtop
```


![jtop](res/jtop.png)


### Test Docker

```

#apt install nvidia-docker2
#apt install nvidia-container-runtime
#apt install -y nvidia-container-toolkit
#systemctl restart docker

# sudo docker info | grep nvidia
Runtimes: nvidia runc

docker pull nvcr.io/nvidia/l4t-ml:r32.4.2-py3
sudo docker run -it --rm --runtime nvidia --network host nvcr.io/nvidia/l4t-ml:r32.4.2-py3

```

### Fix WIFI
echo "blacklist rtl8192cu" | sudo tee -a /etc/modprobe.d/blacklist.conf


# References
- https://developer.nvidia.com/embedded/jetson-agx-xavier-developer-kit#resources
- https://developer.nvidia.com/embedded/dlc/jetson-agx-xavier-developer-kit-user-guide
- https://developer.nvidia.com/embedded/jetpack
- https://github.com/NVIDIA/nvidia-docker/wiki/NVIDIA-Container-Runtime-on-Jetson
- https://github.com/NVIDIA/nvidia-docker
