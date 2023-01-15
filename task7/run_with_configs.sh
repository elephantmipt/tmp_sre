docker run \
    -d --name=grafana_conf \
    -e GF_DATE_FORMATS_DEFAULT_TIMEZONE="Europe/Moscow" \
    -e GF_DASHBOARDS_VERSIONA_TO_KEEP=30 \
    -e GF_USERS_DEFAULT_THEME="dark" \
    -p 3000:3000 \
    grafana/grafana