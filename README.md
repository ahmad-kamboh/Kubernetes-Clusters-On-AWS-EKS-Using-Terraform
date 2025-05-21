# Kubernetes-Clusters-On-AWS-EKS-Using-Terraform
# 🚀 Kubernetes Cluster on AWS EKS Using Terraform

This project provisions a fully managed **Kubernetes (EKS)** cluster on **AWS** using **Terraform**, and deploys a simple **Dockerized HTML page** on it.

![Image](https://github.com/user-attachments/assets/d790e674-929d-48b3-9f80-ebeea1923fb3)

---

## 📁 Project Structure

terraform-eks/
├── main.tf # EKS cluster and Terraform provider configuration

├── variables.tf # AWS VPC and subnet variables

├── kubernetes.tf # Kubernetes namespace, deployment, and service

├── outputs.tf # Outputs for the EKS cluster

├── html/

│ ├── index.html # Static HTML page

│ └── Dockerfile # Dockerfile using Nginx

├── command.sh # Shell script to automate setup
└── README.md # Project documentation

---

## 🛠️ Prerequisites

- AWS CLI configured (`aws configure`)
- `kubectl` installed
- Terraform v1.3+ installed
- Docker installed and DockerHub account

---
![Image](https://github.com/user-attachments/assets/a8e16c0e-6b76-449c-8099-696dd347b279)

## 🐳 Docker Build & Push

```bash
cd html
docker build -t yourdockerhubusername/html-app:latest .
docker push yourdockerhubusername/html-app:latest

chmod +x command.sh
./command.sh

📞 Contact Information

| **Method** | **Details**                  |
|------------|------------------------------|
| Email      | ahmadtahir4235@gmail.com     |
| Phone      | +92 3000511136               |
| LinkedIn   | https://linkedin.com/in/m-ahmadtahir |
