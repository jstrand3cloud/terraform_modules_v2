#---------------------------------------------------------
# Shared Properties
#---------------------------------------------------------
variable "location" {
  description = "Region in which to deploy these resources"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "Additional default tags to add to the resources being deployed at this layer. Application, Environment and Level are added by default"
  default     = {}
}

#---------------------------------------------------------
# Module Properties
#---------------------------------------------------------
variable "resource_group_name" {
  description = "The Virtual Network Resource Group Name that should have the subnets created into them"
}

variable "name" {
  description = "(Required) The name of the virtual network."
  type        = string
}

variable "dns_servers" {
  description = "(Optional) List of IP addresses of DNS servers"
  type        = list(string)
  default     = null
}

variable "address_space" {
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
  type        = list(string)
}

variable "ddos_protection_plan" {
  type = list(object({
    plan_id     = string # (Required) The ID of DDoS Protection Plan.
    plan_enable = bool   # (Required) Enable/disable DDoS Protection Plan on Virtual Network.
  }))
  description = "(Optional) A ddos_protection_plan block."
  default     = []
}