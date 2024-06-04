#This module creates a network security group and corresponding rules.


resource "azurerm_network_security_group" "network_security_group" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_network_security_rule" "network_security_group_rule" {
  for_each = var.security_rules

  network_security_group_name                = azurerm_network_security_group.network_security_group.name
  resource_group_name                        = azurerm_network_security_group.network_security_group.resource_group_name

  name                                       = each.key
  priority                                   = each.value.priority
  protocol                                   = each.value.protocol
  direction                                  = each.value.direction
  access                                     = each.value.access
  description                                = lookup(each.value, "description", null)

  #Below regex logic checks if the first index of the passed in list is either "*" or a word (or words with no spaces) which would be a service tag
  #If true, then _prefix is set to that value as this needs to be a string entry. If false, it means its a list of IPs, which will be set on _prefixes

  destination_address_prefix                 = can(regex("\\*|[A-Za-z]+", each.value.destination_address_prefixes[0])) == true ? each.value.destination_address_prefixes[0] : null
  destination_address_prefixes               = can(regex("\\*|[A-Za-z]+", each.value.destination_address_prefixes[0])) == true ? null : each.value.destination_address_prefixes
  destination_port_range                     = each.value.destination_port_ranges[0] == "*" ? "*" : null
  destination_port_ranges                    = each.value.destination_port_ranges[0] == "*" ? null : each.value.destination_port_ranges
  destination_application_security_group_ids = lookup(each.value, "destination_application_security_group_ids", null)

  source_address_prefix                      = can(regex("\\*|[A-Za-z]+", each.value.source_address_prefixes[0])) == true ? each.value.source_address_prefixes[0] : null
  source_address_prefixes                    = can(regex("\\*|[A-Za-z]+", each.value.source_address_prefixes[0])) == true ? null : each.value.source_address_prefixes
  source_port_range                          = each.value.source_port_ranges[0] == "*" ? "*" : null
  source_port_ranges                         = each.value.source_port_ranges[0] == "*" ? null : each.value.source_port_ranges
}