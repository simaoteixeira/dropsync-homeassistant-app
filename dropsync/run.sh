#!/usr/bin/with-contenv bashio
set -e

export NODE_ENV="$(bashio::config 'node_env')"
export PORT="$(bashio::config 'port')"

bashio::log.info "Starting DropSync with NODE_ENV=${NODE_ENV} on port ${PORT}"

cd /opt/dropsync
exec node_modules/.bin/tsx server.ts
