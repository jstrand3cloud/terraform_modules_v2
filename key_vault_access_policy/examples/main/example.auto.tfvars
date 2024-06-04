## Module Properties ##

key_vault_id            = "/subscriptions/c5d35f87-827d-4224-85d9-a5fac1b90b9b/resourceGroups/tf_test_rg/providers/Microsoft.KeyVault/vaults/ajftestakv"
access_policy_object_id = "1e8e0d49-e61e-43d4-9912-de6b13a91ff8" #Everyone_InfrastructurePractice Enterprise Application Object ID
key_vault_access_policy = {
  certificate_permissions = ["Create", "Get", "List"]
  key_permissions         = ["Create", "Delete", "Get", "List"]
  secret_permissions      = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Backup", "Restore", "Set"]
  storage_permissions     = ["Backup", "Delete", "Get", "List"]
}