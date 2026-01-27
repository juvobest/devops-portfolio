# Terraform Infrastructure Module

This module provisions the AWS resources required for the CI/CD deployment pipeline.

## Resources Provisioned

- VPC
- Subnet
- Internet Gateway
- Route Table + Route Association
- Security Group (ports 22 & 80)
- Key Pair
- EC2 Instance (Ubuntu)
- Outputs (public IP, web URL, docker image tag)

## How to Run

```sh
terraform init
terraform plan
terraform apply
