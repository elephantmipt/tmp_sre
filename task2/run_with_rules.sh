docker run \
    -v configs:/etc/prometheus \
    -p 127.0.0.1:9090:9090 \
    prom/prometheus 