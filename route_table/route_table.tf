
resource "azurerm_route_table" "route_table" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  disable_bgp_route_propagation = var.disable_bgp_route_propagation
  tags                          = var.tags
}

resource "azurerm_route" "route" {
  for_each = var.routes

  resource_group_name    = var.resource_group_name
  route_table_name       = azurerm_route_table.route_table.name
  name                   = each.key
  address_prefix         = each.value["address_prefix"]
  next_hop_in_ip_address = each.value["next_hop_type"] == "VirtualAppliance" ? each.value["next_hop_in_ip_address"] : null
  next_hop_type          = each.value["next_hop_type"]
}