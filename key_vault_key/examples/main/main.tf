module "key_vault_key" {
  source = "../.."

  key_vault_id       = var.key_vault_id
  key_vault_key_name = var.key_vault_key_name
  tags               = var.tags
}