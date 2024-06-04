data "azurerm_client_config" "current" {}

data "azurerm_key_vault_access_policy" "key_vault" {
  for_each = var.key_vault_default_access_policy_named != null ? toset([local.for_loop_default]) : toset([])

  name = var.key_vault_default_access_policy_named
}