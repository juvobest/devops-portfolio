# Multi-Service Application with Docker Compose

# Problem Statement
Modern applications require multiple services (web + database). Docker Compose allows managing them together.

# Tools Used
- Docker
- Docker Compose
- Nginx
- MySQL

# Architecture
- Web service served by Nginx
- MySQL database as a separate container
- Services communicate over Docker network

# How to Run
bash
docker compose up -d
