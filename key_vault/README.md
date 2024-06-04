<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.key_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_key_vault_access_policy.key_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_key_vault_access_policy.key_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault_access_policy) | data source |

# Example Usage

```hcl
module "key_vault" {
  source = "../.."

  key_vault_name                        = var.key_vault_name
  location                              = var.location
  key_vault_resource_group_name         = var.key_vault_resource_group_name
  key_vault_public_access_enabled       = var.key_vault_public_access_enabled
  purge_protection_enabled              = var.purge_protection_enabled
  key_vault_default_access_policy_named = var.key_vault_default_access_policy_named
  enable_rbac_authorization             = var.enable_rbac_authorization
  enabled_for_deployment                = var.enabled_for_deployment
  enabled_for_disk_encryption           = var.enabled_for_disk_encryption
  enabled_for_template_deployment       = var.enabled_for_template_deployment
  tags                                  = var.tags
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_rbac_authorization"></a> [enable\_rbac\_authorization](#input\_enable\_rbac\_authorization) | Determine whether authorization using RBAC can be used for the keyvault | `bool` | `false` | no |
| <a name="input_enabled_for_deployment"></a> [enabled\_for\_deployment](#input\_enabled\_for\_deployment) | Determine whether Virtual Machines can access certificates stored within the keyvault | `bool` | `false` | no |
| <a name="input_enabled_for_disk_encryption"></a> [enabled\_for\_disk\_encryption](#input\_enabled\_for\_disk\_encryption) | Determine whether the keyvault can be used to retrieve secrets to unwrap keys for disk encryption | `bool` | `false` | no |
| <a name="input_enabled_for_template_deployment"></a> [enabled\_for\_template\_deployment](#input\_enabled\_for\_template\_deployment) | Determine whether Azure Resource Manager can access secrets stored within the keyvault | `bool` | `false` | no |
| <a name="input_key_vault_default_access_policy"></a> [key\_vault\_default\_access\_policy](#input\_key\_vault\_default\_access\_policy) | The default keyvault access policy.  Other access\_policies can be added via additional modules and key\_vault can be set to null, if using Key Vault RBAC authorization | <pre>object(<br>    {<br>      certificate_permissions = optional(list(string))<br>      key_permissions         = optional(list(string))<br>      secret_permissions      = optional(list(string))<br>      storage_permissions     = optional(list(string))<br>    }<br>  )</pre> | `null` | no |
| <a name="input_key_vault_default_access_policy_named"></a> [key\_vault\_default\_access\_policy\_named](#input\_key\_vault\_default\_access\_policy\_named) | The name of a Key Vault Management Template, as described in the 'azurerm\_key\_vault\_access\_policy' datasource. The custom permissions take precedence over key\_vault template | `string` | `"Secret Management"` | no |
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | The display name of the Azure Key Vault to be created | `string` | n/a | yes |
| <a name="input_key_vault_network_acls"></a> [key\_vault\_network\_acls](#input\_key\_vault\_network\_acls) | The network restriction rules for the keyvault | <pre>set(object(<br>    {<br>      bypass                     = string<br>      default_action             = string<br>      allowed_ip_rules           = set(string)<br>      virtual_network_subnet_ids = optional(set(string))<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_key_vault_public_access_enabled"></a> [key\_vault\_public\_access\_enabled](#input\_key\_vault\_public\_access\_enabled) | A boolean flag to determine if the Key Vault should be publicly accessible | `bool` | `false` | no |
| <a name="input_key_vault_resource_group_name"></a> [key\_vault\_resource\_group\_name](#input\_key\_vault\_resource\_group\_name) | The name of the resource group of the Azure Key Vault to be created | `string` | n/a | yes |
| <a name="input_key_vault_sku_name"></a> [key\_vault\_sku\_name](#input\_key\_vault\_sku\_name) | (required) | `string` | `"standard"` | no |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region in which to the newly created Azure Key Vault | `string` | n/a | yes |
| <a name="input_purge_protection_enabled"></a> [purge\_protection\_enabled](#input\_purge\_protection\_enabled) | Indicate whether a keyvault/secrets can be purged once they were deleted | `bool` | `false` | no |
| <a name="input_soft_delete_retention_days"></a> [soft\_delete\_retention\_days](#input\_soft\_delete\_retention\_days) | The number of days to retain key\_vault keyvault/secrets if they were deleted | `number` | `90` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Azure Tags that should be added to the newly created Azure Key Vault | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_access_policy"></a> [default\_access\_policy](#output\_default\_access\_policy) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_key_vault_name"></a> [key\_vault\_name](#output\_key\_vault\_name) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
| <a name="output_vault_uri"></a> [vault\_uri](#output\_vault\_uri) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0 |
<!-- END_TF_DOCS -->