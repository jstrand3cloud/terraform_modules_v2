variable "name" {
  type        = string
  description = "(Required) The name of the subnet. Changing this forces a new resource to be created."
}


variable "virtual_network_name" {
  description = "(Required) The name of the virtual network to which to attach the subnet."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the subnet. "
  type        = string
}

variable "address_prefixes" {
  type        = list(string)
  description = "(Required) The address prefixes to use for the subnet."
}

variable "private_endpoint_network_policies_enabled" {
  type        = bool
  description = "(Optional) Enable or Disable network policies for the private endpoint on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true."
  default     = true
}

variable "private_link_service_network_policies_enabled" {
  type        = bool
  description = "(Optional) Enable or Disable network policies for the private link service on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true."
  default     = true
}

variable "service_endpoints" {
  type        = list(string)
  description = "(Optional) The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage, Microsoft.Storage.Global and Microsoft.Web"
  default     = []
}

variable "service_delegation" {
  type        = set(object({
    service_delegation_name     = string
    service_delegation_actions  = list(string)
  }))
  description = "(Optional) - Defined if the subnet is being delegated to a service.  See: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet"
  default     = []
}

variable "route_table_id" {
  type        = list(string)
  default     = []
  description = "(Optional) Route Table ID to link with the subnet being created."
}

variable "network_security_group_id" {
  type        = list(string)
  default     = []
  description = "(Optional) Network Security Group ID to link with the subnet being created."
}