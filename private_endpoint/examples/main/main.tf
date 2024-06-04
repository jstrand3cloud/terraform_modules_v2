module "private_endpoint" {
  source = "../../"

  name                            = var.name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  subnet_id                       = var.subnet_id
  private_dns_zone_ids            = var.private_dns_zone_ids
  is_manual_connection            = var.is_manual_connection
  private_connection_resource_id  = var.private_connection_resource_id
  request_message                 = var.request_message
  private_ip_address              = var.private_ip_address
  subresource_name                = var.subresource_name
}