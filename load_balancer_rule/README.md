<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_lb_rule.load_balancer_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |

# Example Usage

```hcl
module "azurerm_private_dns_zone" {
  source = "../../"

  loadbalancer_id                = var.loadbalancer_id
  name                           = var.name
  protocol                       = var.protocol
  frontend_port                  = var.frontend_port
  backend_port                   = var.backend_port
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  backend_address_pool_ids       = var.backend_address_pool_ids
  probe_id                       = var.probe_id
  enable_floating_ip             = var.enable_floating_ip
  load_distribution              = var.load_distribution
  disable_outbound_snat          = var.disable_outbound_snat
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_address_pool_ids"></a> [backend\_address\_pool\_ids](#input\_backend\_address\_pool\_ids) | (Required) List pool address IDs. This should normally be a single element | `list(string)` | n/a | yes |
| <a name="input_backend_port"></a> [backend\_port](#input\_backend\_port) | (Required) Port for the backend. For HA Ports, set FrontEnd and backend to 0 and protcol to All | `string` | n/a | yes |
| <a name="input_disable_outbound_snat"></a> [disable\_outbound\_snat](#input\_disable\_outbound\_snat) | (Optional) Should outbound SNAT be disabled? | `bool` | `true` | no |
| <a name="input_enable_floating_ip"></a> [enable\_floating\_ip](#input\_enable\_floating\_ip) | (Required) Should floating IP be enabled? | `bool` | n/a | yes |
| <a name="input_frontend_ip_configuration_name"></a> [frontend\_ip\_configuration\_name](#input\_frontend\_ip\_configuration\_name) | (Required) Name of the frontend ip configuration on the LB | `string` | n/a | yes |
| <a name="input_frontend_port"></a> [frontend\_port](#input\_frontend\_port) | (Required) Port for the frontend. For HA Ports, set FrontEnd and backend to 0 and protcol to All | `number` | n/a | yes |
| <a name="input_load_distribution"></a> [load\_distribution](#input\_load\_distribution) | (Optional) How should client persistence be handled. Default is Client IP and Protocol | `string` | `"SourceIPProtocol"` | no |
| <a name="input_loadbalancer_id"></a> [loadbalancer\_id](#input\_loadbalancer\_id) | (Required) Load balancer resource ID | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Rule name | `string` | n/a | yes |
| <a name="input_probe_id"></a> [probe\_id](#input\_probe\_id) | (Required) Health probe ID | `string` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | (Required) Network protocol. For HA Ports, set FrontEnd and backend to 0 and protcol to All | `string` | n/a | yes |

## Outputs

No outputs.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3 |
<!-- END_TF_DOCS -->