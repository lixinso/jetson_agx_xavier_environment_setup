
After [Flush System](https://github.com/lixinso/jetson_agx_xavier_environment_setup/blob/master/FlashSystem.md)

## Test Environment

```
$ nvcc --version

nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2019 NVIDIA Corporation
Built on Wed_Oct_23_21:14:42_PDT_2019
Cuda compilation tools, release 10.2, V10.2.89

$ sudo docker info | grep nvidia

Runtimes: nvidia runc
```

## Test Docker

```
docker pull nvcr.io/nvidia/l4t-ml:r32.4.2-py3
sudo docker run -it --rm --runtime nvidia --network host nvcr.io/nvidia/l4t-ml:r32.4.2-py3
```
