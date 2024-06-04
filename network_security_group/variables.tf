## Shared Properties ##

variable "location" {
  description = "Region in which to deploy these resources"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "Additional default tags to add to the resources being deployed at this layer. Application, Environment and Level are added by default"
  default     = {}
}

## Module Properties ##
variable "name" {
  description = "The name of the NSG to be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group that will hold the new NSG"
  type        = string
}

variable "security_rules" {
  description = "The initial rules to add into the NSG object"
  #type        = map(any) #Use a map(any) to accommodate different sets of parameters in rules.
  type = map(object(
    {
      access                                     = string                 # (Required) Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny.
      description                                = string                 # (Optional) A description for this rule. Restricted to 140 characters.
      destination_address_prefix                 = optional(string)       # (Optional) CIDR or destination IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used. Besides, it also supports all available Service Tags
      destination_address_prefixes               = optional(list(string)) # (Optional) Set of destination address prefixes. Tags may not be used. This is required if destination_address_prefix is not specified.
      destination_application_security_group_ids = optional(list(string)) # (Optional) A Set of destination Application Security Group IDs
      destination_port_range                     = optional(string)       # (Optional) Destination Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if destination_port_ranges is not specified.
      destination_port_ranges                    = optional(list(string)) # (Optional) Set of destination ports or port ranges. This is required if destination_port_range is not specified.
      direction                                  = string                 # (Required) The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound.
      name                                       = optional(string)       # (Required) The name of the security rule. Map key is used in module.
      priority                                   = number                 # (Required) Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
      protocol                                   = string                 # (Required) Network protocol this rule applies to. Possible values include Tcp, Udp, Icmp, Esp, Ah or *
      source_address_prefix                      = optional(string)       # (Optional) CIDR or source IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used. This is required if source_address_prefixes is not specified.
      source_address_prefixes                    = optional(list(string)) # (Optional) Set of source address prefixes. Tags may not be used. This is required if source_address_prefix is not specified.
      source_application_security_group_ids      = optional(list(string)) # (Optional) A Set of source Application Security Group IDs
      source_port_range                          = optional(string)       # (Optional) Source Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if source_port_ranges is not specified.
      source_port_ranges                         = optional(list(string)) # (Optional) Set of source ports or port ranges. This is required if source_port_range is not specified.
    }
  ))
  default = {}
}