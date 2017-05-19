FROM ubuntu:xenial
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt update
RUN apt install -y curl git wget nano build-essential
RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
RUN apt update
RUN apt install -y python-tk openjdk-8-jdk pkg-config zip g++ zlib1g-dev unzip bazel python-numpy python-dev python-pip python-wheel python3-numpy python3-dev python3-pip python3-wheel
RUN pip install --upgrade pip
RUN pip install numpy scipy h5py opencv-python nltk matplotlib pandas keras
