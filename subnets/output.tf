output "id" {
  value = azurerm_subnet.subnet.id
  description = "The subnet ID."
}

output "name" {
  value = azurerm_subnet.subnet.name
  description = "The subnet name."
}

output "address_prefixes" {
  value = azurerm_subnet.subnet.address_prefixes
  description = "The subnet address_prefixes."
}