FROM ubuntu:xenial


RUN apt-get update && apt-get install -y \
    python \
    unzip \
    gcc \
    make \
    bzip2 \
    zlib1g-dev \
    ncurses-dev \
    wget \
    libbz2-dev \
    liblzma-dev \
    less \
    nano \
    man

WORKDIR /

RUN mkdir soft && cd soft \ 
    && wget https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2 \
    && tar jxf samtools-1.6.tar.bz2 && cd samtools-1.6 \
    && ./configure && make && make install ; \
    useradd -mUs /usr/bin/bash -u 1000 user ; \
    rm -r /soft


USER user

WORKDIR /home/user

RUN mkdir example1 data workdir

COPY --chown=user data/* data/
COPY --chown=user example1/* example1/
