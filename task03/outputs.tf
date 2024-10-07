output "rg_id" {
  description = "The ID of the Resource Group"
  value       = azurerm_resource_group.this.id
}

output "sa_blob_endpoint" {
  description = "The blob endpoint URL of storage account"
  value       = data.azurerm_storage_account.existing.primary_blob_endpoint
}

output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.this.id
}
