## Module Properties ##

variable "name" {
  description = "The name of the dns vnet link as shown in the portal."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group Containing the DNS Zone being linked"
  type        = string
}

variable "private_dns_zone_name" {
  description = "The name of the Private DNS Zone being linked"
  type        = string
}

variable "virtual_network_id" {
  description = "The ID of the Virtual Network being linked too."
  type        = string
}

variable "registration_enabled" {
  description = "True/False if the DNS Zone should auto-register VM CName entries.  This can be done for only a single VNet per DNS Zone"
  type        = bool
  default     = false
}
