module "key_vault_key" {
  source = "../.."

  key_vault_id       = var.key_vault_id
  key_vault_key_name = var.key_vault_key_name
  tags               = var.tags

  key_vault_key_is_rotation_policy           = var.key_vault_key_is_rotation_policy
  key_vault_key_is_rotation_policy_automatic = var.key_vault_key_is_rotation_policy_automatic

  key_vault_key_rotation_policy_expire_after         = var.key_vault_key_rotation_policy_expire_after
  key_vault_key_rotation_policy_notify_before_expiry = var.key_vault_key_rotation_policy_notify_before_expiry
  key_vault_key_automatic_time_before_expiry         = var.key_vault_key_automatic_time_before_expiry
  key_vault_key_automatic_time_after_creation        = var.key_vault_key_automatic_time_after_creation
}