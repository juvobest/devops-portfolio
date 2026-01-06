# Monitoring with Prometheus and Grafana

This project implements server-level monitoring on an AWS EC2 instance using Prometheus, Node Exporter, and Grafana.

# Architecture
- Node Exporter runs on the EC2 host and exposes system metrics
- Prometheus scrapes metrics every 15 seconds
- Grafana visualizes metrics using custom dashboards
- All components run using Docker Compose

# Metrics Monitored
- CPU usage (%)
- Memory usage (%)
- Disk usage (%)
- Network and system load (via Node Exporter)

# Deployment
- Platform: AWS EC2 (Ubuntu)
- Containerization: Docker & Docker Compose
- Security:
  - Grafana exposed via AWS Security Group (IP-restricted)
  - Prometheus accessed internally by Grafana
- Monitoring validated by generating CPU load using stress testing

# Outcome
- Real-time visibility into EC2 server health
- Production-style monitoring stack
- Custom PromQL queries used for accurate metrics

# Tools Used
- Prometheus
- Node Exporter
- Grafana
- Docker
- Docker Compose
- AWS EC2
