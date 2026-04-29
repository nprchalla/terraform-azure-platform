# Terraform Azure Platform 🚀

This project demonstrates a **modular Infrastructure as Code (IaC)** setup using Terraform to provision Azure infrastructure and deploy a Kubernetes cluster (AKS).

---

## 📌 Project Overview

This project creates and manages Azure infrastructure using Terraform with a **modular and reusable design**, and deploys an AKS cluster integrated with networking and monitoring.

### Resources created:

* Resource Group
* Virtual Network (VNet)
* Subnet
* Network Security Group (NSG)
* Log Analytics Workspace
* Azure Kubernetes Service (AKS)

---

## 🏗️ Architecture

```text
Resource Group
   ├── Virtual Network (VNet)
   │      └── Subnet
   │             └── Network Security Group (NSG)
   ├── Log Analytics Workspace
   └── AKS Cluster
         └── Node Pool (VMSS)
```

---

## 📁 Project Structure

```text
terraform-azure-platform/
│
├── main.tf
├── providers.tf
├── variables.tf
├── versions.tf
│
├── modules/
│   ├── resource_group/
│   ├── network/
│   ├── nsg/
│   ├── log_analytics/
│   └── aks/
│
└── env/
    └── dev/
        └── terraform.tfvars
```

---

## ⚙️ Prerequisites

* Terraform
* Azure CLI
* kubectl
* Git
* VS Code

---

## 🔐 Authentication

```bash
az login
az account set --subscription "Azure subscription 1"
```

---

## 🚀 How to Deploy

```bash
terraform init
terraform validate
terraform plan -var-file="env/dev/terraform.tfvars"
terraform apply -var-file="env/dev/terraform.tfvars"
```

---

## ☸️ AKS Verification

Get cluster credentials:

```bash
az aks get-credentials --resource-group rg-dev-terraform-demo --name aks-dev-platform
```

Verify nodes:

```bash
kubectl get nodes
```

Expected:

```text
STATUS = Ready
```

---

## 🌐 Deploy Sample Application (Nginx)

Apply deployment:

```bash
kubectl apply -f k8s/nginx-deployment.yaml
```

Check pods:

```bash
kubectl get pods
```

Check service:

```bash
kubectl get svc
```

Access application using **EXTERNAL-IP**

---

## 🧹 Cleanup (Important for Free Trial)

```bash
terraform destroy -var-file="env/dev/terraform.tfvars"
```

---

## 🧠 Skills Practiced

* Terraform modular architecture
* Azure networking (VNet, Subnet, NSG)
* AKS provisioning and configuration
* Log Analytics integration
* Kubernetes basics (kubectl, deployments, services)
* Infrastructure dependency management
* Git & GitHub workflow

---

## 🔄 Future Improvements

* Remote backend (Azure Storage)
* CI/CD pipeline (GitHub Actions / Azure DevOps)
* Multi-environment setup (dev/stage/prod)
* Private AKS cluster
* Helm deployments

---

## 👤 Author

**Phani Reddy**
GitHub: https://github.com/nprchalla

---

## ⭐ If you like this project

Give it a ⭐ on GitHub!
