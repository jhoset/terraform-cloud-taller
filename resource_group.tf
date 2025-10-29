# Create a resource group
resource "azurerm_resource_group" "rg_001" {
  name     = "rg-jhoset-west-europe-dev-001"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vn_001" {
  name                = "vn-jhoset-west-europe-dev-001"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}
