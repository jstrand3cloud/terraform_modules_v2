output "id" {
  value = module.subnets.id
  description = "The subnet ID."
}

output "name" {
  value = module.subnets.name
  description = "The subnet name."
}

output "address_prefixes" {
  value = module.subnet.subnets
  description = "The subnet address_prefixes."
}