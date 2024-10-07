provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "existing" {
  name = var.rg_name
}

resource "azurerm_resource_group" "this" {
  name     = data.azurerm_resource_group.existing.name
  location = data.azurerm_resource_group.existing.location
  tags     = var.tags
}

resource "azurerm_storage_account" "existing" {
  name = var.storage_account_name
}

resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = var.vnet_address_space
  tags                = var.tags
}

resource "azurerm_subnet" "public" {
  name                 = var.public_snet_name
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = var.public_snet_address_prefixes
}

resource "azurerm_subnet" "private" {
  name                 = var.private_snet_name
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = var.private_snet_address_prefixes
}
