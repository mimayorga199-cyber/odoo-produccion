#!/bin/bash
exec odoo \
  --http-port=${PORT:-8069} \
  --db_host=$DB_HOST --db_port=5432 \
  --db_user=$DB_USER --db_password=$DB_PASSWORD \
  --database=$DB_NAME --db-filter=^$DB_NAME$ \
  --workers=0 --max-cron-threads=1 \
  --limit-memory-soft=400000000 --limit-memory-hard=480000000 \
  --proxy-mode --without-demo=all \
  -i base "$@"
