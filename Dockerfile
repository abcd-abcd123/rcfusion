FROM tensorflow/tensorflow:1.14.0-gpu
MAINTAINER Mohammad Reza Loghmani (loghmani@acin.tuwien.ac.at)
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install -y python2.7-dev python-pip python-tk vim git
WORKDIR /rcfusion-code
COPY . .
RUN pip install --upgrade -r requirements.txt