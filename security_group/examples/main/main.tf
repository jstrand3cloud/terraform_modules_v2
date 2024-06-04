module "security_group" {
  source = "../../"

  display_name  = var.display_name
  owners        = var.owners
}