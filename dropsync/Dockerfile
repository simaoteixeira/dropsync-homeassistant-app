ARG BUILD_FROM
FROM ${BUILD_FROM}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache nodejs npm curl unzip

RUN mkdir -p /opt \
    && curl -L https://github.com/ivucicev/DropSync/archive/refs/heads/main.zip -o /tmp/dropsync.zip \
    && unzip /tmp/dropsync.zip -d /opt \
    && mv /opt/DropSync-main /opt/dropsync \
    && cd /opt/dropsync \
    && npm ci \
    && npm run build \
    && npm cache clean --force \
    && rm -rf /tmp/dropsync.zip

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
