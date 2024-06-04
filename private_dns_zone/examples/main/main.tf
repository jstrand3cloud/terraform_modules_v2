module "azurerm_private_dns_zone" {
  source = "../../"

  private_dns_zone_name = var.private_dns_zone_name
  resource_group_name   = var.resource_group_name
  tags                  = var.tags
}