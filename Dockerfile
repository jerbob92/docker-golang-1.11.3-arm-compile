FROM golang:1.9.2

RUN apt-get update && apt-get install -y --no-install-recommends \
		libc6-armel-cross \
		libc6-dev-armel-cross \
		libncurses5-dev \
		gcc-4.9-arm-linux-gnueabi \
		libusb-dev \
	&& rm -rf /var/lib/apt/lists/*
