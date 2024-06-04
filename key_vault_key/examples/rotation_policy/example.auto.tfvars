## Module Properties ##

key_vault_id = "/subscriptions/c5d35f87-827d-4224-85d9-a5fac1b90b9b/resourceGroups/tf_test_rg/providers/Microsoft.KeyVault/vaults/ajftestakv"
tags = {
  Component = "IAC"
}
key_vault_key_name = "generated-app-key"

key_vault_key_is_rotation_policy           = true
key_vault_key_is_rotation_policy_automatic = true

key_vault_key_rotation_policy_expire_after         = "P180D"
key_vault_key_rotation_policy_notify_before_expiry = "P59D"
key_vault_key_automatic_time_before_expiry         = "P30D"
key_vault_key_automatic_time_after_creation        = "P150D"