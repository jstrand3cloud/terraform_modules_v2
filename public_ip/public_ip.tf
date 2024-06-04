
resource "azurerm_public_ip" "public_ip" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  zones               = var.zones
  tags                = var.tags
  domain_name_label   = var.domain_name_label
  sku                 = var.sku
  public_ip_prefix_id = var.public_ip_prefix_id
}

