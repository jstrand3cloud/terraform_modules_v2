output "dns_a_record_fqdn" {
  value = azurerm_private_dns_a_record.private_dns_a_record.fqdn
}

output "dns_a_record_ip_addresses" {
  value = azurerm_private_dns_a_record.private_dns_a_record.records
}