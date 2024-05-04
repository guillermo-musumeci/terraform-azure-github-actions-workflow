# Create the Resource Group
resource "azurerm_resource_group" "this" {
  name     = "kopicloud-github-actions-rg"
  location = "west europe"
}

# Create the VNET
resource "azurerm_virtual_network" "this" {
  name                = "kopicloud-github-actions-vnet"
  address_space       = ["10.10.0.0/16"]
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
}

# Create the Subnet
resource "azurerm_subnet" "this" {
  name                 = "kopicloud-github-actions-subnet"  
  address_prefixes     = ["10.10.1.0/24"]
  virtual_network_name = azurerm_virtual_network.this.name
  resource_group_name  = azurerm_resource_group.this.name
}

