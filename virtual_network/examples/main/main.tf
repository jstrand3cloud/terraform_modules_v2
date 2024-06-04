module "virtual_network" {
  source = "../../"

  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  address_space         = var.address_space
  dns_servers           = var.dns_servers
  ddos_protection_plan  = var.ddos_protection_plan
  tags                  = var.tags

}