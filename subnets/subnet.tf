resource "azurerm_subnet" "subnet" {
  name                                          = var.name
  resource_group_name                           = var.resource_group_name
  virtual_network_name                          = var.virtual_network_name
  address_prefixes                              = var.address_prefixes
  private_endpoint_network_policies_enabled     = var.private_endpoint_network_policies_enabled
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled
  service_endpoints                             = var.service_endpoints

  dynamic "delegation" {
    for_each = var.service_delegation[*]

    content {
      name = "delegation"

      service_delegation {
        name    = delegation.value["service_delegation_name"]
        actions = delegation.value["service_delegation_actions"]
      }
    }
  }
}

#---------------------------------------------------------
# Link route tables to subnets
#---------------------------------------------------------
resource "azurerm_subnet_route_table_association" "route_table_association" {
  count          = length(var.route_table_id)
  subnet_id      = azurerm_subnet.subnet.id
  route_table_id = var.route_table_id[0]
}

#---------------------------------------------------------
# Link network security group to subnets
#---------------------------------------------------------
resource "azurerm_subnet_network_security_group_association" "network_security_group_association" {
  count                     = length(var.network_security_group_id)
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = var.network_security_group_id[0]
}
