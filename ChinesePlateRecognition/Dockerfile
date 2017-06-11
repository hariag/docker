t update && apt-get install -y sudo git wget vim lsb-release libcanberra-gtk-module libboost1.58-dev libatlas-dev libatlas-base-dev python-numpy libopencv-core-dev libopencv-highgui-dev libopencv-flann-dev libopencv-photo-dev libopencv-video-dev libopencv-features2d-dev libopencv-objdetect-dev libopencv-calib3d-dev libopencv-ml-dev libopencv-contrib-dev

RUN git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git

RUN cd /openpose && bash install_caffe_and_openpose.sh 

WORKDIR /openpose
