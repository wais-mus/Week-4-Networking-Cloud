# 🧪 Azure Lab 1 — Free Tier Exploration

This lab covers Azure free tier exploration and basic resource creation using the Azure Portal.  
All steps include explanations for learning and documentation purposes.

---

## 1. Azure Free Account

**Steps:**
1. Sign up for Azure Free Account: https://azure.microsoft.com/free/  
2. Access Azure Portal: https://portal.azure.com  
3. Explore the dashboard, subscriptions, and free tier limitations.

**Notes:**
- Subscription: [Your free tier subscription name]
- Regions available: [List regions]
- Observations: [Dashboard overview, default services, free tier limits]

---

## 2. Resource Group Creation

**Steps:**
1. Go to **Resource groups** → **+ Create**  
2. Fill in:
   - Name: LabRG
   - Region: West Europe  
3. Click **Review + Create** → **Create**  

**Notes:**
- Resource Group Name: LabRG  
- Region: West Europe  
- Purpose: Container for all lab resources  

---

## 3. Virtual Machine (VM) Creation

**Steps:**
1. Go to **Virtual Machines** → **+ Create** → **Azure Virtual Machine**  
2. Fill in:
   - Name: LabVM
   - Resource Group: LabRG
   - Region: West Europe
   - Image: Ubuntu Server 22.04 LTS
   - Size: B1s (free tier eligible)
   - Authentication: SSH public key or password
   - Username: azureuser
3. Leave other tabs at default → **Review + Create** → **Create**  

**Notes:**
- VM Name: LabVM  
- OS: Ubuntu 22.04 LTS  
- Size: B1s (Free Tier)  
- Public IP: 172.210.217.198  
- Networking: Default VNet/Subnet, NSG rules  
- Purpose: Practice VM deployment in Azure portal  

---

## 4. Optional: Delete Resource Group

**Steps:**
- Go to **Resource groups** → select `LabRG` → **Delete resource group** → confirm  
- Deletes all resources inside the group  

**Notes:**  
- Saves free tier credits  
- Ensures lab environment cleanup  

---

## 5. Infrastructure as Code (IaC) Concept

**Overview:**  
- IaC allows automation and reproducibility of cloud resources using code.  
- Terraform can be used for Azure:

**Terraform Example (Optional, CLI):**
```hcl
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "lab_rg" {
  name     = "LabRG-Terraform"
  location = "West Europe"
}

resource "azurerm_storage_account" "lab_storage" {
  name                     = "labstorageterraform"
  resource_group_name      = azurerm_resource_group.lab_rg.name
  location                 = azurerm_resource_group.lab_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
