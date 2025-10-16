# ☁️ Cloud & Terraform Cheat Sheet  
**Week 4: Cloud Infrastructure & Terraform**

---

## 🧠 Overview
This cheat sheet covers cloud concepts, Terraform basics, and essential commands for infrastructure automation.  
It’s designed as a quick reference for deploying and managing resources in cloud environments.

---

## 🌍 Cloud Concepts

| Term | Description |
|------|-------------|
| **IaaS** | Infrastructure as a Service – virtual machines, storage, networking |
| **PaaS** | Platform as a Service – managed runtime environments for apps |
| **SaaS** | Software as a Service – applications accessed via browser |
| **Region** | Physical location of cloud resources |
| **Availability Zone (AZ)** | Isolated location within a region for high availability |
| **Resource Group** | Container for related resources (Azure) |
| **VPC / Subnet** | Network setup in cloud (AWS/GCP) |

---

## 🧱 Terraform Basics

| Command | Description |
|---------|-------------|
| `terraform init` | Initialize a Terraform working directory |
| `terraform plan` | Preview changes before applying |
| `terraform apply` | Apply changes and deploy resources |
| `terraform destroy` | Delete resources managed by Terraform |
| `terraform fmt` | Format Terraform configuration files |
| `terraform validate` | Check syntax and configuration validity |
| `terraform state list` | List all managed resources |
| `terraform output` | Show output variables |

---

## ⚙️ Terraform File Structure

| File | Purpose |
|------|---------|
| `main.tf` | Main resource configuration |
| `variables.tf` | Define input variables |
| `outputs.tf` | Define output values |
| `terraform.tfstate` | Tracks actual resources in the cloud |
| `terraform.tfvars` | Assign values to variables |

---

## 💡 Example Terraform Configuration (Azure)

```hcl```
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "demo-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage" {
  name                     = "demostorageacct"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
📝 Good Practices
Always add terraform.tfstate to .gitignore to avoid committing sensitive data.

Use remote backends (e.g., Azure Storage, S3) for collaboration.

Tag resources for easy identification.

Validate changes with terraform plan before apply.

Modularize code using modules/ for reusable components.

⚡ Common Terraform Commands Summary
Command	Use
terraform init	Initialize directory
terraform validate	Check syntax
terraform fmt	Format code
terraform plan	Preview changes
terraform apply	Deploy infrastructure
terraform destroy	Delete resources
terraform state list	See tracked resources
terraform output	Show outputs
