module "network_security_group" {
  source = "../../"

  location            = var.location
  name                = var.name
  tags                = var.tags
  resource_group_name = var.resource_group_name
  security_rules      = var.security_rules
}