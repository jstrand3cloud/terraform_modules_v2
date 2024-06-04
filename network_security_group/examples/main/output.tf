output "name" {
  value       = module.network_security_group.name
  description = "The name of the Network Security Group."
}

output "id" {
  value       = module.network_security_group.id
  description = "The ID of the Network Security Group."
}