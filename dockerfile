#!docker
FROM ubuntu
MAINTAINER johnle
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt install -y cmake
RUN mkdir -p build
RUN cd build
RUN cmake .
RUN cmake --build . -j8
CMD ['echo', 'Image created']