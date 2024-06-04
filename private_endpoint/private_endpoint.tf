resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_dns_zone_group {
    name                 = var.name
    private_dns_zone_ids = var.private_dns_zone_ids
  }

  private_service_connection {
    name                           = "${var.name}-privateservice"
    is_manual_connection           = var.is_manual_connection
    private_connection_resource_id = var.private_connection_resource_id
    subresource_names              = [var.subresource_name]
    request_message                = var.is_manual_connection == true ? var.request_message : null #set condition if assigning it.
    #member_name                    = var.member_name == null ? var.subresource_name : var.member_name
  }

  dynamic "ip_configuration" {
    for_each = var.private_ip_address
    content {
      name                = "${var.name}-ipconfiguration"
      private_ip_address  = ip_configuration.value
      subresource_name    = var.subresource_name
      member_name         = var.member_name == null ? var.subresource_name : var.member_name
    }
  }

  tags = var.tags
}