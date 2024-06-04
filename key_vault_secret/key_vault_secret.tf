resource "azurerm_key_vault_secret" "key_vault_secret" {
  name         = var.key_vault_secret_name
  value        = var.key_vault_secret_value
  key_vault_id = var.key_vault_id

  content_type    = var.key_vault_secret_content_type
  not_before_date = var.key_vault_secret_not_before_date
  expiration_date = var.key_vault_secret_expiration_date

  tags = var.tags
}