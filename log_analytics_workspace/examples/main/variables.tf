variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created."
  nullable    = false
}

variable "resource_group" {
  type        = string
  description = "(Required) The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created."
  nullable    = false
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
  nullable    = false
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = {}
  nullable    = false
}

variable "sku" {
  type        = string
  description = "(Optional) Specifies the SKU of the Log Analytics Workspace."
  nullable    = false

  validation {
    condition     = contains(["PerNode", "Premium", "Standard", "Standalone", "Unlimited", "CapacityReservation", "PerGB2018"], var.sku)
    error_message = "This needs to match a supported Log Analytics Workspace SKU, other than Free."
  }
  default = "PerGB2018"
}

variable "retention_in_days" {
  type        = number
  description = "(Optional) The workspace data retention in days. Possible values are between 30 and 730."
  nullable    = false
  validation {
    condition     = var.retention_in_days >= 30 && var.retention_in_days <= 730
    error_message = "This needs be a number between 30 and 730."
  }
  default = 30
}

variable "daily_quota_gb" {
  type        = number
  description = "(Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted. When sku is set to Free this field should not be set and has a default value of 0.5. "
  default     = -1
  nullable    = false
}

variable "internet_ingestion_enabled" {
  type        = bool
  description = "(Optional) Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to false."
  default     = false
  nullable    = false
}

variable "internet_query_enabled" {
  type        = bool
  description = "(Optional) Should the Log Analytics Workspace support querying over the Public Internet? Defaults to false."
  default     = false
  nullable    = false
}

variable "reservation_capacity_in_gb_per_day" {
  type        = number
  description = "(Optional) The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000. can only be used when the sku is set to CapacityReservation."
  default     = null
  nullable    = true
}

## Identity Properties

variable "identity_type" {
  type        = string
  description = "Specifies the type of Managed Service Identity that should be configured on this Storage Account."
  default     = "SystemAssigned"
  nullable    = false

  validation {
    condition     = contains(["SystemAssigned", "UserAssigned"], var.identity_type)
    error_message = "Must contain 'SystemAssigned' or 'SystemAssigned' for Identity Type"
  }
}

variable "identity_ids" {
  type        = list(string)
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account."
  default     = null
  nullable    = true
}