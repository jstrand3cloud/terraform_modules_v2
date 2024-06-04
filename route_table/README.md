<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_route.route](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route) | resource |
| [azurerm_route_table.route_table](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table) | resource |

# Example Usage

```hcl
module "route_table" {
  source = "../../"

  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  routes                = var.routes
  tags                  = var.tags
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disable_bgp_route_propagation"></a> [disable\_bgp\_route\_propagation](#input\_disable\_bgp\_route\_propagation) | (Optional) Controls propagation of routes learned by BGP on that route table. True means disable. | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) Region in which to deploy these resources | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the route table to be created | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group that will hold the new route table | `string` | n/a | yes |
| <a name="input_routes"></a> [routes](#input\_routes) | The initial routes to add into the route table | <pre>map(object(<br>    {<br>      #name                  = string #Map key is used as the route name.<br>      address_prefix         = string #Destination to which the route applies. Can be CIDR (10.1.0.0/16) or Azure Service Tag (ApiManagement, AzureBackup or AzureMonitor) format.<br>      next_hop_in_ip_address = optional(string) #Next hop values are only allowed in routes where the next hop type is VirtualAppliance<br>      next_hop_type          = string #Possible values are VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | The Subnet id(s) to attach the route table | `set(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional default tags to add to the resources being deployed at this layer. Application, Environment and Level are added by default | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The route table ID. |
| <a name="output_name"></a> [name](#output\_name) | The route table name. |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3 |
<!-- END_TF_DOCS -->