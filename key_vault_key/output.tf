output "azurerm_key_vault_key_name" {
  value = azurerm_key_vault_key.key_vault_key.name
}

output "azurerm_key_vault_key_id" {
  value = var.key_vault_id
}