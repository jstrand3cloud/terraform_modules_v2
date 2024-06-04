output "dns_a_record_fqdn" {
  value = module.private_dns_a_record.fqdn
}

output "dns_a_record_ip_addresses" {
  value = module.private_dns_a_record.records
}