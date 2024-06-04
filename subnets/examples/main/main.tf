module "subnets" {
  source = "../../"

  name                                          = var.name
  virtual_network_name                          = var.virtual_network_name
  resource_group_name                           = var.resource_group_name
  address_prefixes                              = var.address_prefixes
  private_endpoint_network_policies_enabled     = var.private_endpoint_network_policies_enabled
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled
  service_endpoints                             = var.service_endpoints
  service_delegation                            = var.service_delegation
  route_table_id                                = var.route_table_id
  network_security_group_id                     = var.network_security_group_id
  tags                                          = var.tags

}