output "id" {
  value = azurerm_key_vault.key_vault.id
}

output "resource_group_name" {
  value = azurerm_key_vault.key_vault.resource_group_name
}

output "vault_uri" {
  value = azurerm_key_vault.key_vault.vault_uri
}

output "key_vault_name" {
  value = azurerm_key_vault.key_vault.name
}

output "default_access_policy" {
  value = var.key_vault_default_access_policy != null ? azurerm_key_vault_access_policy.key_vault : null
}