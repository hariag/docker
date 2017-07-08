FROM         tensorflow/tensorflow:latest-devel-gpu
MAINTAINER    Haria Guo(haria.guo@gmail.com)

# RUN sed -i 's@//archive.ubuntu@//mirrors.aliyun@' /etc/apt/sources.list

# RUN apt update && apt-get install -y sudo git wget vim

WORKDIR /tensorflow

#RUN cp /lib/x86_64-linux-gnu/libdl.so.2 third_party/mkl/
RUN bazel clean
#RUN bazel build --config opt --config mkl --config cuda --copt="-DEIGEN_USE_VML" --copt=-msse4.1 --copt=-msse4.2 --copt=-mavx --copt=-mavx2 --copt=-mfma //tensorflow/tools/pip_package:build_pip_package
RUN bazel build --config opt --config cuda --copt=-msse4.1 --copt=-msse4.2 --copt=-mavx --copt=-mavx2 --copt=-mfma //tensorflow/tools/pip_package:build_pip_package
RUN bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
