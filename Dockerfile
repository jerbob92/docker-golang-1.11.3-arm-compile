FROM golang:1.9.2

RUN echo "deb http://emdebian.org/tools/debian/ jessie main" > /etc/apt/sources.list.d/crosstools.list \
	curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add - \
	dpkg --add-architecture armel

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc-arm-linux-gnueabi \
		libusb-dev \
	&& rm -rf /var/lib/apt/lists/*
