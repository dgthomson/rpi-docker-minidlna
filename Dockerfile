FROM alpine:latest

RUN apk add --update-cache bash minidlna && \
rm -rf /var/cache/apk/*

COPY run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
