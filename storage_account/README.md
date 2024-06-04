<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_access_policy.storage_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_storage_account.storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_account_customer_managed_key.customer_managed_key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account_customer_managed_key) | resource |
| [azurerm_storage_container.storage_container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

# Example Usage

```hcl
module "storage_account" {
  source = "../.."

  storage_account_name                   = var.storage_account_name
  location                               = var.location
  resource_group_name                    = var.resource_group_name
  account_kind                           = var.account_kind
  account_tier                           = var.account_tier
  storage_account_replication_type       = var.storage_account_replication_type
  min_tls_version                        = var.min_tls_version
  storage_account_is_gen2                = var.storage_account_is_gen2
  enable_https_traffic_only              = var.enable_https_traffic_only
  nfsv3_enabled                          = var.nfsv3_enabled
  allow_nested_items_to_be_public        = var.allow_nested_items_to_be_public
  tags                                   = var.tags
  identity_type                          = var.identity_type
  storage_account_network_default_action = var.storage_account_network_default_action
  storage_account_network_bypass         = var.storage_account_network_bypass
  storage_account_containers             = var.storage_account_containers
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | (Required) - Defines the type of the the newly created Storage Account | `string` | `"StorageV2"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | (Required) - Defines the tier for the stroage account. | `string` | `"Standard"` | no |
| <a name="input_allow_nested_items_to_be_public"></a> [allow\_nested\_items\_to\_be\_public](#input\_allow\_nested\_items\_to\_be\_public) | (Required) - Allow or disallow nested items within this Account to opt into being public. | `bool` | `false` | no |
| <a name="input_change_feed_enabled"></a> [change\_feed\_enabled](#input\_change\_feed\_enabled) | (Optional) - Is the blob service properties for change feed events enabled | `bool` | `false` | no |
| <a name="input_enable_cmk"></a> [enable\_cmk](#input\_enable\_cmk) | (Optional) - Enable Customer Managed Keys for the Storage Account. | `bool` | `false` | no |
| <a name="input_enable_https_traffic_only"></a> [enable\_https\_traffic\_only](#input\_enable\_https\_traffic\_only) | (Required) - Forces HTTPS if enabled. | `bool` | `true` | no |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | (Optional) - Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account. | `list(string)` | `null` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | (Required) - Specifies the type of Managed Service Identity that should be configured on this Storage Account. | `string` | `"SystemAssigned"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | (Optional) - Key Name of the CMK. | `bool` | `false` | no |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | (Optional) - Key Vault ID for the CMK. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) - The Azure Region in which to place the newly created Storage Account | `string` | n/a | yes |
| <a name="input_min_tls_version"></a> [min\_tls\_version](#input\_min\_tls\_version) | (Required) - The minimum supported TLS version for the storage account. | `string` | `"TLS1_2"` | no |
| <a name="input_nfsv3_enabled"></a> [nfsv3\_enabled](#input\_nfsv3\_enabled) | (Required) - Enable nfsv3 protocol. | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) - The Storage Account Resource Group Name that will host the newly created Storage Account | `string` | n/a | yes |
| <a name="input_soft_delete_blobs_days"></a> [soft\_delete\_blobs\_days](#input\_soft\_delete\_blobs\_days) | (Optional) - The number of days to allow recovery of blobs that were marked for deletion in the newly created Storage Account | `number` | `null` | no |
| <a name="input_soft_delete_containers_days"></a> [soft\_delete\_containers\_days](#input\_soft\_delete\_containers\_days) | (Optional) - The number of days to allow recovery of containers that were marked for deletion in the newly created Storage Account | `number` | `null` | no |
| <a name="input_storage_account_access_tier"></a> [storage\_account\_access\_tier](#input\_storage\_account\_access\_tier) | (Required) - The Storage Account Access Tier | `string` | `"Hot"` | no |
| <a name="input_storage_account_allowed_public_ips"></a> [storage\_account\_allowed\_public\_ips](#input\_storage\_account\_allowed\_public\_ips) | (Optional) - Allowed Map of Public IP Addresses to this Storage Account | `list(string)` | `[]` | no |
| <a name="input_storage_account_containers"></a> [storage\_account\_containers](#input\_storage\_account\_containers) | (Optional) - Set of private Container names to create within the newly created Storage Account | `set(string)` | `[]` | no |
| <a name="input_storage_account_is_gen2"></a> [storage\_account\_is\_gen2](#input\_storage\_account\_is\_gen2) | (Required) - Is Hierarchical Namespace or Gen2 SKU in the Storage Account.  Note this generally not have as deep of backup/soft delete options. | `bool` | `false` | no |
| <a name="input_storage_account_is_versioning_enabled"></a> [storage\_account\_is\_versioning\_enabled](#input\_storage\_account\_is\_versioning\_enabled) | (Optional) - Are blobs versioned in the Storage Account?  Defaults to false | `bool` | `false` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | (Required) - The object name of the the newly created Storage Account | `string` | n/a | yes |
| <a name="input_storage_account_network_bypass"></a> [storage\_account\_network\_bypass](#input\_storage\_account\_network\_bypass) | (Optional) - Allowed Values for bypassing the Firewall | `list(string)` | <pre>[<br>  "AzureServices"<br>]</pre> | no |
| <a name="input_storage_account_network_default_action"></a> [storage\_account\_network\_default\_action](#input\_storage\_account\_network\_default\_action) | (Optional) - Specifies if default action is to allow or deny traffic to storage account | `string` | n/a | yes |
| <a name="input_storage_account_replication_type"></a> [storage\_account\_replication\_type](#input\_storage\_account\_replication\_type) | (Required) - The Storage Account Replication Type. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) - Azure Tags that should be added to the newly created Storage Account | `map(string)` | `{}` | no |
| <a name="input_virtual_network_subnet_ids"></a> [virtual\_network\_subnet\_ids](#input\_virtual\_network\_subnet\_ids) | (Optional) - Specifies the list of ID's, containing Resource ID Strings of the subnets to allow access for the newly created Storage Account | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | n/a |
| <a name="output_primary_blob_endpoint"></a> [primary\_blob\_endpoint](#output\_primary\_blob\_endpoint) | n/a |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | n/a |
| <a name="output_storage_account_rg_name"></a> [storage\_account\_rg\_name](#output\_storage\_account\_rg\_name) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.99.0 |
<!-- END_TF_DOCS -->