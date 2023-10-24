FROM alpine:3.10
label maintainer="Hilton W. Silva - hilton@hiltonws.com"

RUN apk --no-cache add bash py3-pip && pip3 install --no-cache-dir awscli
ADD watch /watch

VOLUME /data

ENV S3_SYNC_FLAGS "--delete"
ENTRYPOINT [ "./watch" ]
CMD ["/data"]
