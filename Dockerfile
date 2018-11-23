FROM docker.elastic.co/kibana/kibana:6.5.0

ENV NODE_OPTIONS="--max-old-space-size=4096"

RUN bin/kibana-plugin install https://github.com/pjhampton/kibana-prometheus-exporter/releases/download/6.5.0/kibana-prometheus-exporter-6.5.0.zip
