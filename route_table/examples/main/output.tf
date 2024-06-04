#Module outputs
output "name" {
  description = "The route table name."
  value       = module.route_table.name
}

output "id" {
  description = "The route table ID."
  value       = module.route_table.id
}