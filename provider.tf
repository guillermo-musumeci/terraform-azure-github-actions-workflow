# Define the Terraform provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
        version = "~> 3.0"
      }
  }
  backend "azurerm" {
    key = "demo.tfstate"
  }
}

# Define the Azure provider
provider "azurerm" {
  features {}
}
