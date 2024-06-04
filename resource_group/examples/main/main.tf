module "resource_group" {
  source = "../../"

  location  = var.location
  name      = var.name
  tags      = var.tags
}