FROM debian:wheezy

MAINTAINER Cihat Genc <cihat@catwithboots.com>

#based on dockerfile by Jo Shields <jo.shields@xamarin.com>

RUN apt-get update \
        && apt-get install -y curl \
        && rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.0 main" > /etc/apt/sources.list.d/mono-catwithboots.list \
        && apt-get update \
        && apt-get install -y mono-complete ca-certificates-mono nuget \
        && rm -rf /var/lib/apt/lists/*