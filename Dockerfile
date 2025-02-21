FROM alpine:latest

RUN apk add --no-cache novnc

ENV CONTAINER_PORT=${CONTAINER_PORT:-8080} \
    VNC_HOST=${VNC_HOST:-localhost} \
    VNC_PORT=${VNC_PORT:-5900}

COPY entrypoint.sh /entrypoint.sh
CMD ["/bin/sh", "/entrypoint.sh"]

EXPOSE ${CONTAINER_PORT}