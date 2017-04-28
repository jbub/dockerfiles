FROM alpine:latest
MAINTAINER Juraj Bubniak <contact@jbub.eu>

ENV HUGO_VERSION=0.20.6

RUN apk --no-cache add wget ca-certificates && \
  cd /tmp/ && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  ls -la && \
  rm hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo /usr/bin/hugo && \
  apk del wget ca-certificates

ENTRYPOINT [ "hugo" ]
