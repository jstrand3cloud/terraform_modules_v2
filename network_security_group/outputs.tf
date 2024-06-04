output "name" {
  value       = azurerm_network_security_group.network_security_group.name
  description = "The name of the Network Security Group."
}

output "id" {
  value       = azurerm_network_security_group.network_security_group.id
  description = "The ID of the Network Security Group."
}