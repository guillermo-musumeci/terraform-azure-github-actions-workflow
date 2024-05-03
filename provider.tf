# Define Terraform provider
terraform {
  required_version = "~> 1.8"
  
  backend "azurerm" {
    resource_group_name  = "kopicloud-tstate-rg"
    storage_account_name = "kopicloudtfstate2652"
    container_name       = "tfstate"
    key                  = "demo.tfstate"
  }
}

# Configure the Azure provider
provider "azurerm" { 
  features {}  
  environment = "public"
}
