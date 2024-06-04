resource "azurerm_private_dns_a_record" "private_dns_a_record" {
  name                = var.a_record_name
  zone_name           = var.dns_zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.a_record_ttl
  records             = var.a_record_ip_address

  tags = var.tags
}