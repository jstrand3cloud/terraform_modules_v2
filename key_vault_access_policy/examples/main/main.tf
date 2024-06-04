module "key_vault_access_policy" {
  source = "../.."

  key_vault_id            = var.key_vault_id
  access_policy_object_id = var.access_policy_object_id
  key_vault_access_policy = var.key_vault_access_policy
}