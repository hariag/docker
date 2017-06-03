FROM         ubuntu:16.04
MAINTAINER    Haria Guo(haria.guo@gmail.com)

#RUN sed -i 's@//archive.ubuntu@//mirrors.aliyun@' /etc/apt/sources.list

RUN apt update && apt install -y git wget procps vim net-tools unzip build-essential libxvidcore-dev libx264-dev libx265-dev  python-numpy python-dev cmake libavcodec-dev libavformat-dev libswscale-dev libgphoto2-dev libavresample-dev libgtk2.0-dev

RUN wget https://github.com/opencv/opencv/archive/3.2.0.zip && unzip 3.2.0.zip && mkdir -p opencv-3.2.0/build

RUN cd opencv-3.2.0/build && cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D PYTHON2_NUMPY_INCLUDE_DIRS:STRING=/usr/lib/python2.7/dist-packages/numpy/core/include -D CUDA_GENERATION=Auto -D BUILD_NEW_PYTHON_SUPPORT=ON  --withffmpeg  ..

WORKDIR opencv-3.2.0/build

RUN make -j4 && make install
