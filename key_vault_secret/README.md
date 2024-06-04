<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_secret.key_vault_secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |

# Example Usage

```hcl
module "key_vault_secret" {
  source = "../.."

  key_vault_id           = var.key_vault_id
  tags                   = var.tags
  key_vault_secret_name  = var.key_vault_secret_name
  key_vault_secret_value = var.key_vault_secret_value
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | This is the resource ID of the Key Vault hosting the Secret to be created | `string` | n/a | yes |
| <a name="input_key_vault_secret_content_type"></a> [key\_vault\_secret\_content\_type](#input\_key\_vault\_secret\_content\_type) | Open Text description of the type of secret needed. Useful for metadata only and not required | `string` | `null` | no |
| <a name="input_key_vault_secret_expiration_date"></a> [key\_vault\_secret\_expiration\_date](#input\_key\_vault\_secret\_expiration\_date) | UTC Datetime string where Secret is expires after that time. Provided in Format: Y-m-d'T'H:M:S'Z' | `string` | `null` | no |
| <a name="input_key_vault_secret_name"></a> [key\_vault\_secret\_name](#input\_key\_vault\_secret\_name) | The Display name of the secret within Azure Key Vault | `string` | n/a | yes |
| <a name="input_key_vault_secret_not_before_date"></a> [key\_vault\_secret\_not\_before\_date](#input\_key\_vault\_secret\_not\_before\_date) | UTC Datetime string where Secret is not useable before that time. Provided in Format: Y-m-d'T'H:M:S'Z' | `string` | `null` | no |
| <a name="input_key_vault_secret_value"></a> [key\_vault\_secret\_value](#input\_key\_vault\_secret\_value) | The Display name of the secret within Azure Key Vault | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Azure Tags that should be added to the newly created Secret | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_key_vault_secret_name"></a> [azurerm\_key\_vault\_secret\_name](#output\_azurerm\_key\_vault\_secret\_name) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0 |
<!-- END_TF_DOCS -->