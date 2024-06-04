module "load_balancer" {
  source = "../../"

  name                               = var.name
  location                           = var.location
  resource_group_name                = var.resource_group_name
  tags                               = var.tags
  sku                                = var.sku
  sku_tier                           = var.sku_tier
  private_frontend_ip_configurations = var.private_frontend_ip_configurations
}