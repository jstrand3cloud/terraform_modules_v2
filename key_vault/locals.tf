locals {
  #Using this variable, to use a consistent name for all "set" variables used inline, for the "for_each" loops on resources
  for_loop_default = "default"

  #These properties are here to ensure that the datasource values are pulled in only if the datasource is not null
  kv_key_permissions         = var.key_vault_default_access_policy_named != null ? data.azurerm_key_vault_access_policy.key_vault[local.for_loop_default].key_permissions : null
  kv_secret_permissions      = var.key_vault_default_access_policy_named != null ? data.azurerm_key_vault_access_policy.key_vault[local.for_loop_default].secret_permissions : null
  kv_certificate_permissions = var.key_vault_default_access_policy_named != null ? data.azurerm_key_vault_access_policy.key_vault[local.for_loop_default].certificate_permissions : null
}