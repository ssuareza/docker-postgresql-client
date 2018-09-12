#!/bin/sh
echo "${POSTGRES_HOST}":*:*:"${POSTGRES_USER}":"${POSTGRES_PASS}" > ~/.pgpass
chmod 0600 ~/.pgpass
cat ~/.pgpass
psql -h ${POSTGRES_HOST} -U ${POSTGRES_USER} -w postgres -c "$@"