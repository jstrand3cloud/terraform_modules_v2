<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) | >= 3.0 |


## Resources

| Name | Type |
|------|------|
| [azurerm_recovery_services_vault.recovery_services_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/recovery_services_vault) | resource |

## Example Usage

```hcl
module "recovery_services_vault" {
  source                             = "../.."
  recovery_services_vault_name       = var.recovery_services_vault_name
  location                           = var.location
  rsv_resource_group_name            = var.rsv_resource_group_name
  vault_sku                          = var.vault_sku
  storage_mode_type                  = var.storage_mode_type
  rsv_public_network_access_enabled  = var.rsv_public_network_access_enabled
  tags                               = var.tags
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_recovery_services_vault_name"></a> [recovery_services_vault_name](#input_recovery_services_vault_name) | The display name of the Recovery Services Vault to be created | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input_location) | The Azure Region in which to create the Recovery Services Vault | `string` | n/a | yes |
| <a name="input_rsv_resource_group_name"></a> [rsv_resource_group_name](#input_rsv_resource_group_name) | The name of the resource group where the Recovery Services Vault will be created | `string` | n/a | yes |
| <a name="input_vault_sku"></a> [vault_sku](#input_vault_sku) | The Recovery Services Vault SKU of the Recovery Services Vault to be created | `string` | "Standard" | no |
| <a name="input_storage_mode_type"></a> [storage_mode_type](#input_storage_mode_type) | The storage type of the Recovery Services Vault to be created | `string` | n/a | yes |
| <a name="input_rsv_public_network_access_enabled"></a> [rsv_public_network_access_enabled](#input_rsv_public_network_access_enabled) | A boolean flag to determine if the Recovery Services Vault should be publicly accessible | `bool` | true | no |
| <a name="input_tags"></a> [tags](#input_tags) | Azure Tags that should be added to the newly created Recovery Services Vault | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output_id) | The ID of the Recovery Services Vault |
| <a name="output_name"></a> [name](#output_name) | The name of the Recovery Services Vault |
| <a name="output_vault_uri"></a> [vault_uri](#output_vault_uri) | The URI of the Recovery Services Vault |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0 |
<!-- END_TF_DOCS -->