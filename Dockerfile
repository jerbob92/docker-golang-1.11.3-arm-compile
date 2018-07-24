FROM golang:1.9.2-stretch

RUN echo "deb http://emdebian.org/tools/debian/ jessie main" > /etc/apt/sources.list.d/crosstools.list \
	&& curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | apt-key add - \
	&& dpkg --add-architecture armhf

RUN apt-get update && apt-get install -y \
		gcc-arm-linux-gnueabihf \
		linux-libc-dev-armhf-cross \
		libc6-armhf-cross \
		libc6-dev-armhf-cross \
		libusb-dev \
		libusb-1.0:armhf \
		libusb-1.0 \
		libxml2-dev:armhf \
		libsystemd-dev \
	&& rm -rf /var/lib/apt/lists/*
