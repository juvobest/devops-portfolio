# Terraform + Docker + CI/CD Deployment on AWS EC2

This project automates the deployment of a static website to AWS using **Terraform**, **Docker**, and **GitHub Actions (CI/CD)**.  
Infrastructure is fully provisioned using **Infrastructure as Code (IaC)**, and application delivery is automated via **Docker image builds and EC2 deployment pipelines**.

---

## 📌 Project Name
`terraform-docker-ci-cd-ec2`

---

## 🚀 Tech Stack

| Category | Tools |
|---|---|
| Cloud | AWS (EC2, VPC, Subnet, Internet Gateway, Route Table) |
| Infrastructure | Terraform |
| CI/CD | GitHub Actions |
| Containerization | Docker |
| Repository | Docker Hub |
| OS | Ubuntu (EC2) |

---

## 🎯 **What This Project Demonstrates**

✔ Provision infrastructure using Terraform  
✔ Build & push Docker images to Docker Hub via CI pipeline  
✔ Connect CI outputs to a deployment pipeline  
✔ SSH automated deployment to AWS EC2  
✔ Zero manual configuration after initial setup  

---

## 🏗 **Architecture Overview**

The deployment workflow:

1. Developer pushes code to GitHub
2. GitHub Actions builds Docker image & pushes to Docker Hub
3. Terraform provisions AWS resources
4. CI/CD logs into EC2 via SSH
5. Docker container runs the static site on port `80`

---

## 🖥 **Architecture Diagram**

> *(Will be provided as `/assets/architecture.png` — uploading next step)*

---

## 🌍 **Live Demo**

| Resource | Link |
|---|---|
| Web App | http://18.133.122.71 |
| Docker Image | https://hub.docker.com/r/juvobest/simple-site |

---

## 📂 **Repository Structure**

```bash
devops-portfolio/
├── simple-site/              # Static site + Dockerfile
├── terraform-infra/          # Terraform IaC scripts
├── .github/workflows/        # CI/CD YAML files
│   ├── ci.yml                # Build & Push Docker Image
│   ├── deploy-simple.yml     # SSH Deploy to EC2
├── monitoring-prometheus/    # Other portfolio modules
├── linux-server-setup/       # Bash automation scripts
└── README.md


flowchart LR
    Developer((Developer))
    GitHub[(GitHub Repo)]
    CI[CI Pipeline\n(Build & Push)]
    DockerHub[(Docker Hub)]
    CD[CD Pipeline\n(SSH Deploy)]
    EC2[(AWS EC2)]
    App[Docker Container\nsimple-site]
    
    Developer --> GitHub
    GitHub --> CI
    CI --> DockerHub
    CI --> CD
    CD --> EC2
    EC2 --> App
    App -->|HTTP 80| Browser[User Browser]

    devops-portfolio/assets/architecture.png


