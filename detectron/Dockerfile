FROM guoharia/caffe2:gpu
MAINTAINER Guo Haria <haria.guo@gmail.com>

# Install Python dependencies
RUN pip install numpy pyyaml matplotlib opencv-python>=3.0 setuptools Cython mock future

# Install the COCO API
RUN git clone https://github.com/cocodataset/cocoapi.git
WORKDIR /cocoapi/PythonAPI
RUN make install

# Clone the Detectron repository
RUN git clone https://github.com/facebookresearch/detectron /detectron

# Set up Python modules
WORKDIR /detectron/lib
RUN make

# Build custom ops
RUN make ops

# Go to Detectron root
WORKDIR /detectron
