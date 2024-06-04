## Shared Properties ##

variable "location" {
  description = "(Required) Region in which to deploy these resources"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "tags"
  default     = {}
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group that will hold the private endpoint."
  type        = string
}

variable "subnet_id" {
    type = string
    description = "(Required) The subnet ID for the private endpoint."
}

variable "name" {
  type        = string
  description = "(Required) Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created."
}

variable "is_manual_connection" {
  type        = bool
  description = "(Optional) Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created."
  default     = false
}

variable "private_connection_resource_id" {
  type        = string
  description = "(Required) The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of private_connection_resource_id or private_connection_resource_alias must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself."
}

variable "subresource_name" {
  type        = string
  default     = null
  description = "(Required) A subresource name which the Private Endpoint is able to connect to. subresource_name corresponds to group_id. Changing this forces a new resource to be created."
}

variable "member_name" {
  type        = string
  default     = null
  description = "(Optional) Specifies the member name this IP address applies to. If it is not specified, it will use the value of subresource_name. Changing this forces a new resource to be created."
}

variable "request_message" {
  type        = string
  default     = null
  description = "(Optional) Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created."
}

variable "private_ip_address" {
  type = list(string)
  description = "(Optional) The private IP address to use for the Private Endpoint.  This should be a list containing 0 or 1 IP addresses."
  default = []
}

variable "private_dns_zone_ids" {
  type        = list(string)
  default     = []
  description = "Private DNS Zone IDs to associate with the DNS Group being created for the private endpoint.  This should only be needed in some cases (SQL MI Secondary Region for example)."
}
