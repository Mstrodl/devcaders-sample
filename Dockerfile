ARG CROSS_BASE_IMAGE
FROM $CROSS_BASE_IMAGE

ARG CROSS_OS
ARG CROSS_TRIPLE

RUN apt-get update && \
  apt-get install libasound2-dev libudev-dev -y && \
  rm -rf /var/cache/apt
