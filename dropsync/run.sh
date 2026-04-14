#!/usr/bin/with-contenv bashio
set -e

export NODE_ENV="$(bashio::config 'node_env')"
export PORT="3000"

bashio::log.info "Starting DropSync with NODE_ENV=${NODE_ENV} on port ${PORT}"

cd /opt/dropsync
exec npm run preview -- --host 0.0.0.0 --port "${PORT}"
