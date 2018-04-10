FROM ubuntu:xenial


RUN apt-get update && apt-get install -y \
    python \
    perl \
    unzip \
    gcc \
    g++ \
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
    rm -r /soft

RUN mkdir soft && cd soft \ 
    && wget https://github.com/arq5x/bedtools2/releases/download/v2.25.0/bedtools-2.25.0.tar.gz \
    && tar -zxvf bedtools-2.25.0.tar.gz && cd bedtools2 && make \
    && cp bin/* /usr/local/bin/; \
    rm -r /soft

RUN mkdir soft && cd soft \ 
    && wget https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.3.4/bowtie2-2.3.4-linux-x86_64.zip \
    && unzip bowtie2-2.3.4-linux-x86_64.zip \
    && cp bowtie2-2.3.4-linux-x86_64/bowtie* /usr/local/bin/; \
    rm -r /soft

RUN useradd -mUs /usr/bin/bash -u 1000 user 

USER user

WORKDIR /home/user

RUN mkdir example1 data workdir

COPY --chown=user data/* data/
COPY --chown=user example1/* example1/
