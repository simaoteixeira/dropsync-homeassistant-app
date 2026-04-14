ARG BUILD_FROM
FROM ${BUILD_FROM}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache git nodejs npm
RUN git clone --depth=1 https://github.com/ivucicev/DropSync.git /opt/dropsync \
    && cd /opt/dropsync \
    && npm install \
    && npm run build || true \
    && npm cache clean --force

COPY rootfs /
RUN chmod a+x /etc/cont-init.d/* /etc/services.d/dropsync/run
