FROM golang:1.9.2-stretch

RUN echo "deb http://emdebian.org/tools/debian/ jessie main" > /etc/apt/sources.list.d/crosstools.list \
	&& curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | apt-key add - \
	&& dpkg --add-architecture arm

RUN apt-get update && apt-get install -y \
		gcc-arm-linux-gnueabi \
		linux-libc-dev-arm-cross \
		libc6-arm-cross \
		libc6-dev-arm-cross \
		libusb-dev \
		libxml2-dev:arm \
	&& rm -rf /var/lib/apt/lists/*
