FROM golang:1.11.3-stretch

RUN dpkg --add-architecture armhf

RUN apt-get update && apt-get install -y \
		gcc-arm-linux-gnueabihf \
		linux-libc-dev-armhf-cross \
		libc6-armhf-cross \
		libc6-dev-armhf-cross \
		libusb-dev \
		libusb-1.0 \
		libxml2-dev:armhf \
	&& rm -rf /var/lib/apt/lists/*
