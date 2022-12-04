#!docker
FROM ubuntu
MAINTAINER johnle
RUN apt update && \
    apt-get install -y build-essential && \
    apt install -y cmake && \
    mkdir -p build && \
    cd build && \
    cmake .. && \
    cmake --build . -j8 && \
CMD ['echo', 'Image created']
