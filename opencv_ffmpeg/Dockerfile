FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
MAINTAINER    Haria Guo(haria.guo@gmail.com)

RUN sed -i 's@//archive.ubuntu@//mirrors.cn99@' /etc/apt/sources.list


# PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig/:$PKG_CONFIG_PATH

apt install git vim yasm libfrei0r-ocaml-dev pkg-config ccache cmake automake autoconf libfreetype6-dev libfribidi-dev libfontconfig-dev libfdk-aac-dev

git clone --recursive https://github.com/FFmpeg/nv-codec-headers && cd nv-codec-headers && make && make install && cd ..&& rm -rf nv-codec-headers



RUN apt update && apt install -y git wget procps vim net-tools unzip build-essential libxvidcore-dev libx264-dev libx265-dev  python-numpy python-dev cmake libavcodec-dev libavformat-dev libswscale-dev libgphoto2-dev libavresample-dev libgtk2.0-dev

RUN wget https://github.com/opencv/opencv/archive/3.2.0.zip && unzip 3.2.0.zip && mkdir -p opencv-3.2.0/build

WORKDIR opencv-3.2.0/build

#RUN cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D PYTHON2_NUMPY_INCLUDE_DIRS:STRING=/usr/lib/python2.7/dist-packages/numpy/core/include -D CUDA_GENERATION=Auto -D BUILD_NEW_PYTHON_SUPPORT=ON  --withffmpeg  ..

RUN cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D PYTHON2_NUMPY_INCLUDE_DIRS:STRING=/usr/lib/python2.7/dist-packages/numpy/core/include -D WITH_CUDA=OFF -D WITH_OPENCL=OFF -D BUILD_NEW_PYTHON_SUPPORT=ON  --withffmpeg  ..

RUN make -j4 && make install
RUN cd /usr/local && tar czf opencv.tgz bin/ include/ lib share/OpenCV && mv opencv.tgz / && rm -rf /3.2.0.zip /opencv-3.2.0/
