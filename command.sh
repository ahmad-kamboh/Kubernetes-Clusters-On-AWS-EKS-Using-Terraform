#!/bin/bash

# command.sh - Automate Terraform and Kubernetes deployment on AWS EKS

# Exit immediately on error
set -e

# Colors for output
GREEN="\033[0;32m"
NC="\033[0m" # No Color

echo -e "${GREEN}=== Step 1: Initializing Terraform ===${NC}"
terraform init

echo -e "${GREEN}=== Step 2: Validating Terraform files ===${NC}"
terraform validate

echo -e "${GREEN}=== Step 3: Applying Terraform configuration ===${NC}"
terraform apply -auto-approve

echo -e "${GREEN}=== Step 4: Updating kubeconfig for EKS cluster ===${NC}"
aws eks --region us-east-1 update-kubeconfig --name simple-eks-cluster

echo -e "${GREEN}=== Step 5: Verifying Kubernetes Service ===${NC}"
kubectl get svc -n html-app

echo -e "${GREEN}=== Done! Access your HTML app using the EXTERNAL-IP above. ===${NC}"

chmod +x command.sh  
./command.sh
