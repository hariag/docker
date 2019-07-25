FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
MAINTAINER    Haria Guo(haria.guo@gmail.com)

RUN sed -i 's@//archive.ubuntu@//mirrors.cn99@' /etc/apt/sources.list


# PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig/:$PKG_CONFIG_PATH

apt install git vim yasm libfrei0r-ocaml-dev pkg-config ccache cmake automake autoconf libfreetype6-dev libfribidi-dev libfontconfig-dev libfdk-aac-dev
apt install libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libopenjp2-7-dev libsoxr-dev libspeex-dev libtheora-dev 
apt install libvo-amrwbenc-dev libvorbis-dev libvpx-dev libwebp-dev libx264-dev libx265-dev libxvidcore-dev libxml2-dev 
apt install libatlas-base-dev liblapacke-dev   libssl1.0.0  libgstreamer1.0-0   gstreamer1.0-tools  gstreamer1.0-plugins-good  gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly  gstreamer1.0-libav  libgstrtspserver-1.0-0  libjansson4
apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libdc1394-22-dev libgtk2.0-dev libeigen3-dev


# cd ../opus-1.1.1; ./configure --prefix=/usr/local/; make -j32; make install
# cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local 
# cd vmaf-1.3.14; make clean; make -j32;  make install
# cd zimg-release-2.9.1;./configure --prefix=/usr/local/ --enable-shared ; make -j32;  make install
# ./configure --enable-gpl --enable-libass --enable-libfdk-aac --enable-libfreetype --enable-libmp3lame --enable-libopus --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264     --enable-libx265 --enable-nonfree --extra-cflags=-I/usr/local/NvCodec --extra-cflags="-I/usr/local/cuda-10.1/include/" --extra-ldflags=-L/usr/local/cuda-10.1/lib64     --enable-shared  --enable-nvenc --enable-cuda --enable-cuvid --enable-libnpp --enable-version3 --enable-shared --disable-debug --disable-ffplay --disable-indev=sndio --disable-outdev=sndio --enable-fontconfig --enable-frei0r --enable-gnutls --enable-gray --enable-libaom --enable-libfribidi --enable-libass --enable-libvmaf --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-librubberband --enable-libsoxr --enable-libspeex --enable-libvorbis --enable-libopus --enable-libtheora --enable-libvidstab --enable-libvo-amrwbenc --enable-libvpx --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libxvid --enable-libzimg --enable-avresample


git clone --recursive https://github.com/FFmpeg/nv-codec-headers && cd nv-codec-headers && make && make install && cd ..&& rm -rf nv-codec-headers



RUN apt update && apt install -y git wget procps vim net-tools unzip build-essential libxvidcore-dev libx264-dev libx265-dev  python-numpy python-dev cmake libavcodec-dev libavformat-dev libswscale-dev libgphoto2-dev libavresample-dev libgtk2.0-dev

RUN wget https://github.com/opencv/opencv/archive/3.2.0.zip && unzip 3.2.0.zip && mkdir -p opencv-3.2.0/build

WORKDIR opencv-3.2.0/build

#RUN cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D PYTHON2_NUMPY_INCLUDE_DIRS:STRING=/usr/lib/python2.7/dist-packages/numpy/core/include -D CUDA_GENERATION=Auto -D BUILD_NEW_PYTHON_SUPPORT=ON  --withffmpeg  ..

RUN cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D PYTHON2_NUMPY_INCLUDE_DIRS:STRING=/usr/lib/python2.7/dist-packages/numpy/core/include -D WITH_CUDA=OFF -D WITH_OPENCL=OFF -D BUILD_NEW_PYTHON_SUPPORT=ON  --withffmpeg  ..

RUN make -j4 && make install
RUN cd /usr/local && tar czf opencv.tgz bin/ include/ lib share/OpenCV && mv opencv.tgz / && rm -rf /3.2.0.zip /opencv-3.2.0/
