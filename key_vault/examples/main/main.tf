module "key_vault" {
  source = "../.."

  key_vault_name                        = var.key_vault_name
  location                              = var.location
  key_vault_resource_group_name         = var.key_vault_resource_group_name
  key_vault_public_access_enabled       = var.key_vault_public_access_enabled
  purge_protection_enabled              = var.purge_protection_enabled
  key_vault_default_access_policy_named = var.key_vault_default_access_policy_named
  enable_rbac_authorization             = var.enable_rbac_authorization
  enabled_for_deployment                = var.enabled_for_deployment
  enabled_for_disk_encryption           = var.enabled_for_disk_encryption
  enabled_for_template_deployment       = var.enabled_for_template_deployment
  tags                                  = var.tags
}
