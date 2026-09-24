FROM golang:1.27.1@sha256:3680233e3204827fbdc66088528ae6d4b3d034f51d03a99d454f6de034888244

RUN apt update && apt install -y sbcl unzip libsqlite3-dev make curl gawk freetds-dev libzip-dev

RUN git clone --branch=v3.6.10 https://github.com/dimitri/pgloader.git && \
    cd pgloader && \
    make && \
    mv build/bin/pgloader /bin && \
    cd .. && rm -rf pgloader

WORKDIR "/home/migration"
