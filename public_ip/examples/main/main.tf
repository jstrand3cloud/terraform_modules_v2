module "public_ip" {
  source = "../../"

  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  public_ip_prefix_id = var.public_ip_prefix_id
  allocation_method   = var.allocation_method
  zones               = var.zones
  domain_name_label   = var.domain_name_label
  sku                 = var.sku
  tags                = var.tags
}