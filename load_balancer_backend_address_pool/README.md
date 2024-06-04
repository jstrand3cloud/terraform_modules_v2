<!-- BEGIN_TF_DOCS -->
# LB backend pool module

This module will create a backend pool for a load balancer and associate it to a load balancer

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_lb_backend_address_pool.load_balancer_pool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_loadbalancer_id"></a> [loadbalancer\_id](#input\_loadbalancer\_id) | (Required) Resource ID of the load balancer | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of pool to create | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the pool created. |
<!-- END_TF_DOCS -->