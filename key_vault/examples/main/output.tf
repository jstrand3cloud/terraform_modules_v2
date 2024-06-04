output "id" {
  value = module.key_vault.id
}

output "resource_group_name" {
  value = module.key_vault.resource_group_name
}

output "vault_uri" {
  value = module.key_vault.vault_uri
}

output "key_vault_name" {
  value = module.key_vault.key_vault_name
}

output "default_access_policy" {
  value = module.key_vault.default_access_policy
}