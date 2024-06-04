resource "azurerm_key_vault_access_policy" "key_vault_access_policy" {
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = var.access_policy_object_id
  key_vault_id = var.key_vault_id

  certificate_permissions = var.key_vault_access_policy.certificate_permissions
  key_permissions         = var.key_vault_access_policy.key_permissions
  secret_permissions      = var.key_vault_access_policy.secret_permissions
  storage_permissions     = var.key_vault_access_policy.storage_permissions
}

