output "name" {
  description = "Name of the Private Endpoint"
  value       = module.private_endpoint.name
}

output "id" {
  description = "Id of the Private Endpoint"
  value       = module.private_endpoint.id
}

output "ip_address" {
  description = "IP address associated with the Private Endpoint."
  value       = try(module.private_endpoint.private_service_connection[0].private_ip_address, null)
}

output "private_dns_zone_group" {
  description = "The ID of the Private DNS Zone Group."
  value       = module.private_endpoint.private_dns_zone_group
}
