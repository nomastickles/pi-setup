# Resources

- https://prometheus.io/docs/guides/node-exporter/
- https://prometheus.io/docs/guides/cadvisor/#monitoring-docker-container-metrics-using-cadvisor
- https://thesmarthomejourney.com/2022/07/25/monitoring-smarthome-prometheus/
- dashboards https://grafana.com/grafana/dashboards/14282-cadvisor-exporter/
- https://grafana.com/grafana/dashboards/1860-node-exporter-full/
- https://github.com/nats-io/prometheus-nats-exporter/tree/main/walkthrough

```sh
docker-compose --project-name nats-testing up -d

NATS_URL="nats-server:4222" nats server check connection
```
