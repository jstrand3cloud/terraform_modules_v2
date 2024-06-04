## Module Properties ##

key_vault_id = "/subscriptions/c5d35f87-827d-4224-85d9-a5fac1b90b9b/resourceGroups/tf_test_rg/providers/Microsoft.KeyVault/vaults/ajftestakv"
tags = {
  Component = "IAC"
}
key_vault_secret_name = "secret-password"
## Pass in "key_vault_secret_value" another way! Left out of here, it'll force you to create it on the command line when run manually.
## You should ideally pass this in by Environment variable: "TF_VAR_key_vault_secret_value" in an Azure DevOps/Github Actions automation
## Reference here: https://developer.hashicorp.com/terraform/cli/config/environment-variables