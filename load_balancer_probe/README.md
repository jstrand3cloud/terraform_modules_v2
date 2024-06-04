<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_lb_probe.load_balancer_probe](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_probe) | resource |

# Example Usage

```hcl
module "load_balancer_probe" {
  source = "../../"

  loadbalancer_id     = var.loadbalancer_id
  name                = var.name
  port                = var.port
  protocol            = var.protocol
  probe_threshold     = var.probe_threshold
  request_path        = var.request_path
  interval_in_seconds = var.interval_in_seconds
  number_of_probes    = var.number_of_probes
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_interval_in_seconds"></a> [interval\_in\_seconds](#input\_interval\_in\_seconds) | (Optional) The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5. | `number` | `null` | no |
| <a name="input_loadbalancer_id"></a> [loadbalancer\_id](#input\_loadbalancer\_id) | (Required) Resource of load balancer | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Probe name | `string` | n/a | yes |
| <a name="input_number_of_probes"></a> [number\_of\_probes](#input\_number\_of\_probes) | (Optional) The number of failed probe attempts after which the backend endpoint is removed from rotation. The default value is 2. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful. | `number` | `null` | no |
| <a name="input_port"></a> [port](#input\_port) | (Required) Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive. | `number` | n/a | yes |
| <a name="input_probe_threshold"></a> [probe\_threshold](#input\_probe\_threshold) | (Optional) The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from 1 to 100. The default value is 1. | `number` | `null` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | (Required) Specifies the protocol of the end point. Possible values are Http, Https or Tcp. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful. | `string` | n/a | yes |
| <a name="input_request_path"></a> [request\_path](#input\_request\_path) | (Optional) The URI used for requesting health status from the backend endpoint. Required if protocol is set to Http or Https. Otherwise, it is not allowed. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of the probe created |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3 |
<!-- END_TF_DOCS -->