output "name" {
  value       = azurerm_virtual_network.virtual_network.name
  description = "virtual network (VNET) name"
}

output "id" {
  value       = azurerm_virtual_network.virtual_network.id
  description = "virtual network (VNET) id"
}