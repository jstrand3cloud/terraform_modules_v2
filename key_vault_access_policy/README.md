<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_access_policy.key_vault_access_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

# Example Usage

```hcl
module "key_vault_access_policy" {
  source = "../.."

  key_vault_id            = var.key_vault_id
  access_policy_object_id = var.access_policy_object_id
  key_vault_access_policy = var.key_vault_access_policy
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_policy_object_id"></a> [access\_policy\_object\_id](#input\_access\_policy\_object\_id) | The Object ID GUID of the Principal being granted access to the Access Policy | `string` | n/a | yes |
| <a name="input_key_vault_access_policy"></a> [key\_vault\_access\_policy](#input\_key\_vault\_access\_policy) | The associated properties for the newly created access policies | <pre>object(<br>    {<br>      certificate_permissions = optional(list(string))<br>      key_permissions         = optional(list(string))<br>      secret_permissions      = optional(list(string))<br>      storage_permissions     = optional(list(string))<br>    }<br>  )</pre> | n/a | yes |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | This is the resource ID of the Key Vault hosting the Access Policy to be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_access_policy"></a> [default\_access\_policy](#output\_default\_access\_policy) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0 |
<!-- END_TF_DOCS -->