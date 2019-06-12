# Alpine + QEMU + ARM64 (aarch64)

![Docker Build Status](https://img.shields.io/docker/build/anacha/arm64v8-alpine-qemu.svg)

[![](https://images.microbadger.com/badges/version/anacha/arm64v8-alpine-qemu.svg)](https://microbadger.com/images/anacha/arm64v8-alpine-qemu "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/anacha/arm64v8-alpine-qemu:4.svg)](https://microbadger.com/images/anacha/arm64v8-alpine-qemu:4 "Get your own version badge on microbadger.com")
[![Layers](https://images.microbadger.com/badges/image/anacha/arm64v8-alpine-qemu.svg)](https://microbadger.com/images/anacha/arm64v8-alpine-qemu "Get your own image badge on microbadger.com")

This project enables building a *Docker* image to allow running *64-bits ARM*
*Alpine Linux* builds on non-arm hosts (like [Travis](https://travis-ci.org) build agents).

- [arm64v8/alpine](https://hub.docker.com/r/arm64v8/alpine)
- [qemu-user-static](https://github.com/multiarch/qemu-user-static/releases)

## Usage

Before building images from this image or running containers from those on `x86`
architecture execute the following command:

`docker run --rm --privileged multiarch/qemu-user-static:register --reset`

As described in its [GitHub project](https://github.com/multiarch/qemu-user-static)
this will register the *static QEMU binary* that exists in this base image
for all supported processors.

- [**example-arm64v8-alpine-golang**](https://gitlab.com/dev-to/example-arm64v8-alpine-golang)

## Layers and Dependencies graph

```text
+-- arm64v8/alpine:3.9
    |
    +-- qemu-aarch64-static:4.0.0-2
```

| libray                      | base-1 image       |
| --------------------------- | ------------------ |
| qemu-aarch64-static:4.0.0-2 | arm64v8/alpine:3.9 |
| qemu-aarch64-static:4.0.0   | arm64v8/alpine:3.9 |
