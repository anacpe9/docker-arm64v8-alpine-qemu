FROM arm64v8/alpine:latest

LABEL maintainer "Anucha Nualsi <ana.cpe9@gmail.com>"
LABEL upstream "Viktor Adam <rycus86@gmail.com>"

ADD qemu-aarch64-static /usr/bin
