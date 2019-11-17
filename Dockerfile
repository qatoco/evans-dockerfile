FROM alpine:3.10.3
RUN wget -O - 'https://github.com/ktr0731/evans/releases/download/0.8.4/evans_linux_amd64.tar.gz' | tar zxvf -
ENTRYPOINT ["/evans"]