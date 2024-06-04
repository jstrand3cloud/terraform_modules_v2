resource "azurerm_lb" "load_balancer" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
  sku                 = var.sku
  sku_tier            = var.sku_tier

  dynamic "frontend_ip_configuration" {
    for_each = var.private_frontend_ip_configurations
    content {
      name                          = frontend_ip_configuration.value.name
      subnet_id                     = frontend_ip_configuration.value.subnet_id
      private_ip_address_allocation = try(frontend_ip_configuration.value.private_ip_address, null) == null ? "Dynamic" : "Static"
      private_ip_address_version    = var.ip_version
      private_ip_address            = try(frontend_ip_configuration.value.private_ip_address, null)
      zones                         = try(frontend_ip_configuration.value.zones, null)
      public_ip_address_id          = try(frontend_ip_configuration.value.public_ip_address_id, null)
    }
  }
}
