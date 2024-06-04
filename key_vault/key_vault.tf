resource "azurerm_key_vault" "key_vault" {
  name                          = var.key_vault_name
  location                      = var.location
  resource_group_name           = var.key_vault_resource_group_name
  tenant_id                     = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days    = var.soft_delete_retention_days
  purge_protection_enabled      = var.purge_protection_enabled
  sku_name                      = var.key_vault_sku_name
  public_network_access_enabled = var.key_vault_public_access_enabled

  enable_rbac_authorization       = var.enable_rbac_authorization
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment

  tags = var.tags

  dynamic "network_acls" {
    for_each = var.key_vault_network_acls
    content {
      bypass                      = network_acls.value["bypass"]
      default_action              = network_acls.value["default_action"]
      ip_rules                    = network_acls.value["allowed_ip_rules"]
      virtual_network_subnet_ids  = network_acls.value["virtual_network_subnet_ids"]
    }
  }

}

resource "azurerm_key_vault_access_policy" "key_vault" {
  for_each = var.key_vault_default_access_policy != null || var.key_vault_default_access_policy_named != null ? toset([local.for_loop_default]) : toset([])

  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id
  key_vault_id = azurerm_key_vault.key_vault.id

  certificate_permissions = local.kv_certificate_permissions != null ? local.kv_certificate_permissions : var.key_vault_default_access_policy.certificate_permissions
  key_permissions         = local.kv_key_permissions != null ? local.kv_key_permissions : var.key_vault_default_access_policy.key_permissions
  secret_permissions      = local.kv_secret_permissions != null ? local.kv_secret_permissions : var.key_vault_default_access_policy.secret_permissions
  # Datasource for Templates don't support Storage Permissions
  storage_permissions = var.key_vault_default_access_policy != null ? var.key_vault_default_access_policy.storage_permissions : []
}
