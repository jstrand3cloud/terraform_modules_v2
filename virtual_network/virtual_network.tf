#---------------------------------------------------------
# This module creates a virtual network
#---------------------------------------------------------
resource "azurerm_virtual_network" "virtual_network" {

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  tags = var.tags

  # Optional DDOS protection
  dynamic "ddos_protection_plan" {
    for_each = var.ddos_protection_plan
    content {
      id     = ddos_protection_plan.value["plan_id"]
      enable = ddos_protection_plan.value["plan_enable"]
    }
  }
}