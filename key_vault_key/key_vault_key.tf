resource "azurerm_key_vault_key" "key_vault_key" {
  name         = var.key_vault_key_name
  key_vault_id = var.key_vault_id
  key_type     = var.key_vault_key_type
  key_size     = var.key_vault_key_size
  curve        = var.key_vault_key_curve

  key_opts        = var.key_vault_key_opts
  not_before_date = var.key_vault_key_not_before_date
  expiration_date = var.key_vault_key_expiration_date

  dynamic "rotation_policy" {
    for_each = var.key_vault_key_is_rotation_policy ? toset(["rotation_policy"]) : toset([])
    content {
      expire_after         = var.key_vault_key_rotation_policy_expire_after
      notify_before_expiry = var.key_vault_key_rotation_policy_notify_before_expiry

      dynamic "automatic" {
        for_each = var.key_vault_key_is_rotation_policy_automatic ? toset(["automatic"]) : toset([])

        content {
          time_after_creation = var.key_vault_key_automatic_time_after_creation
          time_before_expiry  = var.key_vault_key_automatic_time_before_expiry
        }
      }
    }
  }

  tags = var.tags
}