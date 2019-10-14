FROM debian:stretch
MAINTAINER Fabrice Jammes <fabrice.jammes@in2p3.fr>

# RUN echo "deb http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list

# Start with this long step not to re-run it on
# each Dockerfile update
RUN apt-get -y update && \
    apt-get -y install apt-utils && \
    apt-get -y upgrade && \
    apt-get -y clean

RUN apt-get -y install curl bash-completion git gnupg jq \
    lsb-release \
    openssh-client parallel \
    unzip vim wget

# Install Google cloud SDK
RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" \
    | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | \
    apt-key add - && \
    apt-get -y update && apt-get -y install google-cloud-sdk

ENV GO_VERSION 1.13.1
ENV GO_PKG go${GO_VERSION}.linux-amd64.tar.gz
RUN wget https://dl.google.com/go/$GO_PKG && \
    tar -xvf $GO_PKG && \
    mv go /usr/local

ENV GOROOT /usr/local/go
ENV GOPATH /go

COPY rootfs /

ARG FORCE_GO_REBUILD=false
RUN $GOROOT/bin/go get -u google.golang.org/api/admin/directory/v1
RUN $GOROOT/bin/go get -u golang.org/x/oauth2/google 
