# evans-dockerfile
evans in docker

## TL;DR;
use `evans`(`v0.8.4`) via docker
## How to use:

```diff
-- evans -v
-- evans --host localhost -p 5300 helloworld.proto
-- evans --host localhost --port 1111 -r
++ docker run --rm qatoto/evans -v
++ docker run --rm qatoto/evans --host localhost -p 5300 helloworld.proto
++ docker run --rm qatoto/evans --host localhost --port 1111 -r
```

## Dockerfile

```dockerfile
FROM alpine:3.10.3 as builder
RUN wget -O - 'https://github.com/ktr0731/evans/releases/download/0.8.4/evans_linux_amd64.tar.gz' | tar zxvf -
FROM scratch
COPY --from=builder /evans /evans
ENTRYPOINT ["/evans"]
```

