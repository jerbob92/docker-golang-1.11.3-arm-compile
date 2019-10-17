FROM golang:1.11.3-stretch

RUN dpkg --add-architecture armel

RUN apt-get update && apt-get install -y \
		gcc-arm-linux-gnueabi \
		linux-libc-dev-armel-cross \
		libc6-armel-cross \
		libc6-dev-armel-cross \
		libusb-dev \
                libusb-1.0 \
		libxml2-dev:armel \
	&& rm -rf /var/lib/apt/lists/*
