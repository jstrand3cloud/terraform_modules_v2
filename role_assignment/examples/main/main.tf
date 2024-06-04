module "role_assignment" {
  source = "../../"

  subscription_id         = var.subscription_id
  management_group_name   = var.management_group_name
  scope                   = var.scope
  role_definition         = var.role_definition
  principal_id            = var.principal_id
}