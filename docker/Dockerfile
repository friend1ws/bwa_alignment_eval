FROM ubuntu:16.04

MAINTAINER Yuichi Shiraishi <friend1ws@gmail.com>

RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    make \
    gcc \
    zlib1g-dev

RUN wget https://github.com/lh3/bwa/archive/v0.7.16.tar.gz && \
    tar zxvf v0.7.16.tar.gz && \
    cd bwa-0.7.16 && \
    make && \
    mv bwa /usr/local/bin

RUN wget https://github.com/samtools/samtools/releases/download/1.3.1/samtools-1.3.1.tar.bz2 && \
    tar jxvf samtools-1.3.1.tar.bz2 && \
    cd samtools-1.3.1/htslib-1.3.1 && \
    ./configure §§ make && make install && \
    cd ../ && ./configure --without-curses && make && make install

 
