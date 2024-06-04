key_vault_name                        = "threec-iac-test-kv"
location                              = "eastus2"
key_vault_resource_group_name         = "tf_test_rg"
key_vault_public_access_enabled       = false
purge_protection_enabled              = false
key_vault_default_access_policy_named = "Key, Secret, & Certificate Management"
enable_rbac_authorization             = false
enabled_for_deployment                = false
enabled_for_disk_encryption           = false
enabled_for_template_deployment       = true
tags = {
  Component = "IAC"
}
