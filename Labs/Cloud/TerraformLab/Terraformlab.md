# 🧪 Cloud Lab — Terraform on Azure

## Goal
Learn to provision Azure resources using **Terraform**, an Infrastructure as Code (IaC) tool.

---

## Steps Performed

### 1️⃣ 1 Setup
- Installed Terraform on local Linux environment.
- Logged in to Azure CLI:
  ```bash```
  az login
  az account show

Verified active subscription.

## 2 Created Terraform Configuration (main.tf)

Defined Azure provider:

provider "azurerm" {
  features {}
}


Defined Resource Group:

resource "azurerm_resource_group" "lab_rg" {
  name     = "LabRG-Terraform"
  location = "westeurope"
}


Defined Storage Account:

resource "azurerm_storage_account" "lab_storage" {
  name                     = "labstorageterraform"
  resource_group_name      = azurerm_resource_group.lab_rg.name
  location                 = azurerm_resource_group.lab_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = true
  https_traffic_only_enabled = true
}

## 3 Initialize Terraform
terraform init


Downloads required provider plugins.

Prepares directory for Terraform operations.

## 4 Plan Infrastructure
terraform plan


Validates configuration.

Shows resources that will be created.

Output confirmed:

azurerm_resource_group.lab_rg

azurerm_storage_account.lab_storage

# 5 Apply Configuration
terraform apply


Terraform created:

Resource Group: LabRG-Terraform

Storage Account: labstorageterraform

Verified resources exist in Azure portal.

## 6️ Key Learnings

Terraform allows automated provisioning of cloud resources.

Configuration files (.tf) define desired state of infrastructure.

terraform plan shows changes without applying them.

terraform apply executes the plan in Azure.
