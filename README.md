# Terraform Azure Platform 🚀

This project demonstrates a modular Infrastructure as Code (IaC) setup using Terraform to provision Azure resources.

---

## 📌 Project Overview

This project creates and manages Azure infrastructure using Terraform with a modular and reusable design.

### Resources created:

* Resource Group
* Virtual Network (VNet)
* Subnet
* Network Security Group (NSG)
* Log Analytics Workspace

---

## 🏗️ Architecture

```text
Resource Group
   ├── Virtual Network (VNet)
   │      └── Subnet
   │             └── Network Security Group (NSG)
   └── Log Analytics Workspace
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
│   └── log_analytics/
│
└── env/
    └── dev/
        └── terraform.tfvars
```

---

## ⚙️ Prerequisites

Make sure you have the following installed:

* Terraform
* Azure CLI
* Git
* VS Code (recommended)

---

## 🔐 Authentication

Login to Azure:

```bash
az login
```

Select your subscription:

```bash
az account set --subscription "Azure subscription 1"
```

---

## 🚀 How to Deploy

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Plan deployment:

```bash
terraform plan -var-file="env/dev/terraform.tfvars"
```

Apply changes:

```bash
terraform apply -var-file="env/dev/terraform.tfvars"
```

---

## 🧹 Destroy Resources

To clean up resources:

```bash
terraform destroy -var-file="env/dev/terraform.tfvars"
```

---

## 🧠 Key Concepts Learned

* Terraform modules for reusable infrastructure
* Azure resource provisioning using Terraform
* Dependency management between resources
* Infrastructure validation and planning
* State management basics
* Networking concepts (VNet, Subnet, NSG)

---

## 🔄 Future Improvements

* Add AKS (Azure Kubernetes Service)
* Implement remote backend (Azure Storage)
* Add CI/CD pipeline (Azure DevOps / GitHub Actions)
* Introduce multi-environment support (dev, stage, prod)
* Add monitoring dashboards

---

## 👤 Author

**Phani Reddy**
GitHub: https://github.com/nprchalla

---

## ⭐ If you like this project

Give it a ⭐ on GitHub!
