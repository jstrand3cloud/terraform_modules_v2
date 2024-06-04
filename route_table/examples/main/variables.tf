## Shared Properties ##

variable "location" {
  description = "(Required) Region in which to deploy these resources"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "Additional default tags to add to the resources being deployed at this layer. Application, Environment and Level are added by default"
  default     = {}
}

## Module Properties ##
variable "name" {
  description = "(Required) The name of the route table to be created"
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group that will hold the new route table"
  type        = string
}

variable "routes" {
  description = "The initial routes to add into the route table"
  type = map(object(
    {
      #name                  = string #Map key is used as the route name.
      address_prefix         = string #Destination to which the route applies. Can be CIDR (10.1.0.0/16) or Azure Service Tag (ApiManagement, AzureBackup or AzureMonitor) format.
      next_hop_in_ip_address = optional(string) #Next hop values are only allowed in routes where the next hop type is VirtualAppliance
      next_hop_type          = string #Possible values are VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance
    }
  ))
  default = {}
}

variable "disable_bgp_route_propagation" {
  description = "(Optional) Controls propagation of routes learned by BGP on that route table. True means disable."
  type        = bool
  default     = true
}
