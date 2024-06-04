module "private_dns_a_record" {
  source = "../../"

  a_record_name       = var.a_record_name
  dns_zone_name       = var.dns_zone_name
  resource_group_name = var.resource_group_name
  a_record_ttl        = var.a_record_ttl
  a_record_ip_address = var.a_record_ip_address

  tags = var.tags
}