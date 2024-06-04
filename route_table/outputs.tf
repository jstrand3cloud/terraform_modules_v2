#Module outputs
output "name" {
  description = "The route table name."
  value       = azurerm_route_table.route_table.name
}

output "id" {
  description = "The route table ID."
  value       = azurerm_route_table.route_table.id
}