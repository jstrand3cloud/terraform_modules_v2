module "key_vault_secret" {
  source = "../.."

  key_vault_id           = var.key_vault_id
  tags                   = var.tags
  key_vault_secret_name  = var.key_vault_secret_name
  key_vault_secret_value = var.key_vault_secret_value
}