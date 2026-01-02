# Dockerized Web Application

# Problem Statement
Applications often behave differently across environments. Docker solves this by packaging applications with their dependencies.

# Tools Used
- Docker
- Nginx
- HTML

# How It Works
- Application files are copied into a Docker image
- Nginx serves the application inside a container
- Port 80 inside the container is mapped to port 8080 on the host

# How to Run
bash
docker build -t docker-app-demo .
docker run -d -p 8080:80 docker-app-demo
