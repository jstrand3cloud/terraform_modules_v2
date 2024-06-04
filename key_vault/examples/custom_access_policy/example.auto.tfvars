key_vault_name                  = "threec-iac-test-kv"
location                        = "eastus2"
key_vault_resource_group_name   = "tf_test_rg"
key_vault_public_access_enabled = true
purge_protection_enabled        = false
key_vault_default_access_policy = {
  certificate_permissions = null
  key_permissions         = null
  secret_permissions      = ["backup", "delete", "get", "list", "purge", "recover", "backup", "restore", "set"]
  storage_permissions     = null
}
enable_rbac_authorization       = false
enabled_for_deployment          = false
enabled_for_disk_encryption     = false
enabled_for_template_deployment = true
tags = {
  Component = "IAC"
}

key_vault_network_acls = [{
  bypass                             = "AzureServices"
  default_action                     = "Allow"
  allowed_ip_rules                   = ["0.0.0.0/0"]
  allowed_virtual_network_subnet_ids = []
}]