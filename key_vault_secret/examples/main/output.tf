output "azurerm_key_vault_secret_name" {
  value     = module.key_vault_secret.azurerm_key_vault_secret_name
  sensitive = true
}