<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.load_balancer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |

# Example Usage

```hcl
module "load_balancer" {
  source = "../../"

  name                               = var.name
  location                           = var.location
  resource_group_name                = var.resource_group_name
  tags                               = var.tags
  sku                                = var.sku
  sku_tier                           = var.sku_tier
  private_frontend_ip_configurations = var.private_frontend_ip_configurations
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_version"></a> [ip\_version](#input\_ip\_version) | (Optional) Does this ALB use IPv4 or IPv6? | `string` | `"IPv4"` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) Region in which to deploy these resources | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the load balancer to be created | `string` | n/a | yes |
| <a name="input_private_frontend_ip_configurations"></a> [private\_frontend\_ip\_configurations](#input\_private\_frontend\_ip\_configurations) | (Required) Map of objects that contains the information needed to create the front ends | <pre>map(object({<br>    name                  = string<br>    subnet_id             = string<br>    private_ip_address    = optional(string)<br>    public_ip_address_id  = optional(string)<br>    zones                 = optional(list(string))<br>  }))</pre> | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group that will hold the new ALB | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | (Optional) Sku for the Load balancer. Defaults to Standard | `string` | `"Standard"` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | (Optional) Sku Tier for the Load balancer. Defaults to Regional | `string` | `"Regional"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Required) Additional default tags to add to the resources being deployed at this layer. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The load balancer ID. |
| <a name="output_name"></a> [name](#output\_name) | The load balancer ID. |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3 |
<!-- END_TF_DOCS -->