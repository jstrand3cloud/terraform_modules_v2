variable "location" {
  description = "(Required) Region in which to deploy these resources"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "(Required) Additional default tags to add to the resources being deployed at this layer."
  default     = {}
}

variable "name" {
  description = "(Required) The name of the load balancer to be created"
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group that will hold the new ALB"
  type        = string
}

variable "private_frontend_ip_configurations" {
  description = "(Required) Map of objects that contains the information needed to create the front ends"
  type = map(object({
    name                  = string
    subnet_id             = string
    private_ip_address    = optional(string)
    public_ip_address_id  = optional(string)
    zones                 = optional(list(string))
  }))
}

variable "sku" {
  description = "(Optional) Sku for the Load balancer. Defaults to Standard"
  type        = string
  default     = "Standard"
  validation {
    condition     = contains(["Standard", "Basic"], var.sku)
    error_message = "The sku variable must be 'Standard' or 'Basic'."
  }
}

variable "sku_tier" {
  description = "(Optional) Sku Tier for the Load balancer. Defaults to Regional"
  type        = string
  default     = "Regional"
  validation {
    condition     = contains(["Regional", "Global"], var.sku_tier)
    error_message = "The sku_tier variable must be 'Regional' or 'Global'."
  }
}

variable "ip_version" {
  description = "(Optional) Does this ALB use IPv4 or IPv6?"
  type = string
  default = "IPv4"  
  validation {
    condition     = contains(["IPv4", "IPv6"], var.ip_version)
    error_message = "The sku_tier variable must be 'IPv4' or 'IPv6'."
  }
}
