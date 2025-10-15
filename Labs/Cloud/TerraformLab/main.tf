# Configure the Azure provider
provider "azurerm" {
  features {}
  subscription_id = "f7602bc1-1f36-4ea4-ac8c-7984a0e16421"
  resource_provider_registrations = "none"
}



# Create a Resource Group
resource "azurerm_resource_group" "lab_rg" {
  name     = "LabRG-Terraform"
  location = "West Europe"
}

# Create a Storage Account
resource "azurerm_storage_account" "lab_storage" {
  name                     = "labstorageterraform"
  resource_group_name      = azurerm_resource_group.lab_rg.name
  location                 = azurerm_resource_group.lab_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

