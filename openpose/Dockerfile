FROM         nvidia/cuda:8.0-cudnn5-devel-ubuntu16
MAINTAINER    Haria Guo(haria.guo@gmail.com)

RUN sed -i 's@//archive.ubuntu@//mirrors.aliyun@' /etc/apt/sources.list

RUN apt update && apt-get install -y git wget vim lsb-release libboost1.58-dev libatlas-dev libatlas-base-dev python-numpy libopencv-core-dev libopencv-highgui-dev libopencv-flann-dev libopencv-photo-dev libopencv-video-dev libopencv-features2d-dev libopencv-objdetect-dev libopencv-calib3d-dev libopencv-ml-dev libopencv-contrib-dev

RUN git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git

RUN cd /openpose && bash install_caffe_and_openpose.sh 

WORKDIR /openpose
