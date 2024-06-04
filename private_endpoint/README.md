<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_private_endpoint.private_endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |

# Example Usage

```hcl
module "private_endpoint" {
  source = "../../"

  name                            = var.name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  subnet_id                       = var.subnet_id
  private_dns_zone_ids            = var.private_dns_zone_ids
  is_manual_connection            = var.is_manual_connection
  private_connection_resource_id  = var.private_connection_resource_id
  request_message                 = var.request_message
  private_ip_address              = var.private_ip_address
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_is_manual_connection"></a> [is\_manual\_connection](#input\_is\_manual\_connection) | (Optional) Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) Region in which to deploy these resources | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_private_connection_resource_id"></a> [private\_connection\_resource\_id](#input\_private\_connection\_resource\_id) | (Required) The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of private\_connection\_resource\_id or private\_connection\_resource\_alias must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself. | `string` | n/a | yes |
| <a name="input_private_dns_zone_ids"></a> [private\_dns\_zone\_ids](#input\_private\_dns\_zone\_ids) | Private DNS Zone IDs to associate with the DNS Group being created for the private endpoint.  This should only be needed in some cases (SQL MI Secondary Region for example). | `list(string)` | `[]` | no |
| <a name="input_private_ip_address"></a> [private\_ip\_address](#input\_private\_ip\_address) | (Optional) The private IP address to use for the Private Endpoint.  This should be a list containing 0 or 1 IP addresses. | `list(string)` | `[]` | no |
| <a name="input_request_message"></a> [request\_message](#input\_request\_message) | (Optional) Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group that will hold the private endpoint. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | (Required) The subnet ID for the private endpoint. | `string` | n/a | yes |
| <a name="input_subresource_name"></a> [subresource\_name](#input\_subresource\_name) | (Required) A subresource name which the Private Endpoint is able to connect to. subresource\_name corresponds to group\_id. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Id of the Private Endpoint |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | IP address associated with the Private Endpoint. |
| <a name="output_name"></a> [name](#output\_name) | Name of the Private Endpoint |
| <a name="output_private_dns_zone_group"></a> [private\_dns\_zone\_group](#output\_private\_dns\_zone\_group) | The ID of the Private DNS Zone Group. |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3 |
<!-- END_TF_DOCS -->