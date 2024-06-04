<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_key.key_vault_key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key) | resource |

# Example Usage

```hcl
module "key_vault_key" {
  source = "../.."

  key_vault_id       = var.key_vault_id
  key_vault_key_name = var.key_vault_key_name
  tags               = var.tags
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | This is the resource ID of the Key Vault hosting the Key to be created | `string` | n/a | yes |
| <a name="input_key_vault_key_automatic_time_after_creation"></a> [key\_vault\_key\_automatic\_time\_after\_creation](#input\_key\_vault\_key\_automatic\_time\_after\_creation) | A ISO 8601 Duration string that indicates how soon to rotate a key after a certain date. Both this and the 'key\_vault\_key\_automatic\_time\_after\_creation' property must be set for rotation policy automatic set to true | `string` | `"P60D"` | no |
| <a name="input_key_vault_key_automatic_time_before_expiry"></a> [key\_vault\_key\_automatic\_time\_before\_expiry](#input\_key\_vault\_key\_automatic\_time\_before\_expiry) | A ISO 8601 Duration string that indicates how soon to rotate a key before an expiration date. Both this and the 'key\_vault\_key\_automatic\_time\_after\_creation' property must be set for rotation policy automatic set to true | `string` | `"P30D"` | no |
| <a name="input_key_vault_key_curve"></a> [key\_vault\_key\_curve](#input\_key\_vault\_key\_curve) | The type of curve to use for EC type keys. Only valid of using EC type key | `string` | `null` | no |
| <a name="input_key_vault_key_expiration_date"></a> [key\_vault\_key\_expiration\_date](#input\_key\_vault\_key\_expiration\_date) | UTC Datetime string where Key is expires after that time. Provided in Format: Y-m-d'T'H:M:S'Z' | `string` | `null` | no |
| <a name="input_key_vault_key_is_rotation_policy"></a> [key\_vault\_key\_is\_rotation\_policy](#input\_key\_vault\_key\_is\_rotation\_policy) | A boolean switch for whether this key will be controlled by a rotation policy | `bool` | `false` | no |
| <a name="input_key_vault_key_is_rotation_policy_automatic"></a> [key\_vault\_key\_is\_rotation\_policy\_automatic](#input\_key\_vault\_key\_is\_rotation\_policy\_automatic) | A boolean switch for whether this key will be controlled by a rotation policy and be automatically rotated | `bool` | `false` | no |
| <a name="input_key_vault_key_name"></a> [key\_vault\_key\_name](#input\_key\_vault\_key\_name) | The Display name of the Key within Azure Key Vault | `string` | n/a | yes |
| <a name="input_key_vault_key_not_before_date"></a> [key\_vault\_key\_not\_before\_date](#input\_key\_vault\_key\_not\_before\_date) | UTC Datetime string where Key is not useable before that time. Provided in Format: Y-m-d'T'H:M:S'Z' | `string` | `null` | no |
| <a name="input_key_vault_key_opts"></a> [key\_vault\_key\_opts](#input\_key\_vault\_key\_opts) | The type operations to support for the newly created Azure Key Vault Key | `list(string)` | <pre>[<br>  "decrypt",<br>  "encrypt",<br>  "sign",<br>  "unwrapKey",<br>  "verify",<br>  "wrapKey"<br>]</pre> | no |
| <a name="input_key_vault_key_rotation_policy_expire_after"></a> [key\_vault\_key\_rotation\_policy\_expire\_after](#input\_key\_vault\_key\_rotation\_policy\_expire\_after) | A ISO 8601 Duration string that indicates how soon to expire a key after a certain date. Must have this property defined for rotation policy set to true | `string` | `"P90D"` | no |
| <a name="input_key_vault_key_rotation_policy_notify_before_expiry"></a> [key\_vault\_key\_rotation\_policy\_notify\_before\_expiry](#input\_key\_vault\_key\_rotation\_policy\_notify\_before\_expiry) | A ISO 8601 Duration string that indicates how closely to notify an administrator that this key is about to expire. This property can optionally be set for rotation policy | `string` | `"P59D"` | no |
| <a name="input_key_vault_key_size"></a> [key\_vault\_key\_size](#input\_key\_vault\_key\_size) | The size of the RSA key being created. Only valid if using RSA type key | `number` | `"4096"` | no |
| <a name="input_key_vault_key_type"></a> [key\_vault\_key\_type](#input\_key\_vault\_key\_type) | The type of key being created within Azure Key Vault | `string` | `"RSA"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Azure Tags that should be added to the newly created Key | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_key_vault_key_id"></a> [azurerm\_key\_vault\_key\_id](#output\_azurerm\_key\_vault\_key\_id) | n/a |
| <a name="output_azurerm_key_vault_key_name"></a> [azurerm\_key\_vault\_key\_name](#output\_azurerm\_key\_vault\_key\_name) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0 |
<!-- END_TF_DOCS -->