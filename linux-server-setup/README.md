Linux Server Setup & Hardening

Problem Statement
New Linux servers are often insecure by default. This project demonstrates how to securely configure a Linux server for production use.

Tools Used
- Ubuntu Server
- OpenSSH
- UFW Firewall

Server Setup Overview
- Created a non-root user
- Configured SSH key authentication
- Disabled root login
- Configured firewall rules
- Updated system packages

Architecture
Simple single-server setup with SSH access secured by key authentication and firewall rules.

Steps Performed

Initial Server Access
- Connected to Ubuntu 22.04 EC2 instance via SSH using key-based authentication.
- Verified connectivity after configuring VPC, public subnet, route table, and Internet Gateway.


What I Learned
- Linux user and permission management
- SSH security best practices
- Firewall configuration with UFW
