<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.network_security_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_rule.network_security_group_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |

# Example Usage

```hcl
module "network_security_group" {
  source = "../../"

  location            = var.location
  name                = var.name
  tags                = var.tags
  resource_group_name = var.resource_group_name
  security_rules      = var.security_rules
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Region in which to deploy these resources | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the NSG to be created | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group that will hold the new NSG | `string` | n/a | yes |
| <a name="input_security_rules"></a> [security\_rules](#input\_security\_rules) | The initial rules to add into the NSG object | <pre>map(object(<br>    {<br>      access                                     = string                 # (Required) Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny.<br>      description                                = string                 # (Optional) A description for this rule. Restricted to 140 characters.<br>      destination_address_prefix                 = optional(string)       # (Optional) CIDR or destination IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used. Besides, it also supports all available Service Tags<br>      destination_address_prefixes               = optional(list(string)) # (Optional) Set of destination address prefixes. Tags may not be used. This is required if destination_address_prefix is not specified.<br>      destination_application_security_group_ids = optional(list(string)) # (Optional) A Set of destination Application Security Group IDs<br>      destination_port_range                     = optional(string)       # (Optional) Destination Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if destination_port_ranges is not specified.<br>      destination_port_ranges                    = optional(list(string)) # (Optional) Set of destination ports or port ranges. This is required if destination_port_range is not specified.<br>      direction                                  = string                 # (Required) The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound.<br>      name                                       = optional(string)       # (Required) The name of the security rule. Map key is used in module.<br>      priority                                   = number                 # (Required) Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.<br>      protocol                                   = string                 # (Required) Network protocol this rule applies to. Possible values include Tcp, Udp, Icmp, Esp, Ah or *<br>      source_address_prefix                      = optional(string)       # (Optional) CIDR or source IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used. This is required if source_address_prefixes is not specified.<br>      source_address_prefixes                    = optional(list(string)) # (Optional) Set of source address prefixes. Tags may not be used. This is required if source_address_prefix is not specified.<br>      source_application_security_group_ids      = optional(list(string)) # (Optional) A Set of source Application Security Group IDs<br>      source_port_range                          = optional(string)       # (Optional) Source Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if source_port_ranges is not specified.<br>      source_port_ranges                         = optional(list(string)) # (Optional) Set of source ports or port ranges. This is required if source_port_range is not specified.<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional default tags to add to the resources being deployed at this layer. Application, Environment and Level are added by default | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Network Security Group. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Network Security Group. |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3 |
<!-- END_TF_DOCS -->