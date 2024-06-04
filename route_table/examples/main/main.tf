module "route_table" {
  source = "../../"

  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  routes                = var.routes
  tags                  = var.tags
}