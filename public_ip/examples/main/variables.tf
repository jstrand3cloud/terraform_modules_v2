variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Public IP. Changing this forces a new Public IP to be created"
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created"
}

variable "allocation_method" {
  type        = string
  default     = "static"
  description = "(Optional) Defines the allocation method for this IP address. Possible values are Static or Dynamic. Defaults to Static."
}

variable "zones" {
  type        = set(string)
  description = "(Required) A collection containing the availability zone to allocate the Public IP in"
}

variable "tags" {
  type        = map(string)
  description = "(Required) A mapping of tags to assign to the resource."
  default     = {}
}

variable "domain_name_label" {
  type        = string
  default     = null
  description = "(Optional) Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system"
}

variable "sku" {
  type        = string
  default     = "Standard"
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to standard"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created"
}

variable "public_ip_prefix_id" {
  type        = string
  description = "(Optional) Resource ID of the public IP prefix from which to pull the public IP."
  default     = null
}