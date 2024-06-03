FROM golang:1.22.3@sha256:6d71b7c3f884e7b9552bffa852d938315ecca843dcc75a86ee7000567da0923d

RUN apt update && apt install -y sbcl unzip libsqlite3-dev make curl gawk freetds-dev libzip-dev

RUN git clone https://github.com/dimitri/pgloader.git && \
    cd pgloader && \
    make && \
    mv build/bin/pgloader /bin && \
    cd .. && rm -rf pgloader

WORKDIR "/home/migration"
