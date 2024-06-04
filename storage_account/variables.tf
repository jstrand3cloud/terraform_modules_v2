## Shared Properties ##

variable "location" {
  description = "(Required) - The Azure Region in which to place the newly created Storage Account"
  type        = string
  nullable    = false
}

variable "tags" {
  type        = map(string)
  description = "(Optional) - Azure Tags that should be added to the newly created Storage Account"
  default     = {}
  nullable    = false
}

## Module Properties ##

variable "resource_group_name" {
  description = "(Required) - The Storage Account Resource Group Name that will host the newly created Storage Account"
  type        = string
  nullable    = false
}

variable "storage_account_name" {
  type        = string
  description = "(Required) - The object name of the the newly created Storage Account"
  nullable    = false
}

variable "account_kind" {
  type        = string
  description = "(Required) - Defines the type of the the newly created Storage Account"
  default     = "StorageV2"
  nullable    = false

  validation {
    condition     = contains(["BlobStorage", "BlockBlobStorage", "FileStorage", "Storage", "StorageV2"], var.account_kind)
    error_message = "Storage Account needs to match supported Tier (BlobStorage/BlockBlobStorage/FileStorage/Storage/StorageV2)."
  }
}

variable "account_tier" {
  type        = string
  description = "(Required) - Defines the tier for the stroage account."
  default     = "Standard"
  nullable    = false

  validation {
    condition     = contains(["Standard", "premium"], var.account_tier)
    error_message = "Storage Account needs to match supported Tier (Standard/Premium)."
  }
}
variable "storage_account_replication_type" {
  type        = string
  description = "(Required) - The Storage Account Replication Type."
  nullable    = false

  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.storage_account_replication_type)
    error_message = "The sku must be one of: LRS, GRS, RAGRS, ZRS, GZRS, or RAGZRS."
  }
}

variable "min_tls_version" {
  type        = string
  description = "(Required) - The minimum supported TLS version for the storage account."
  default     = "TLS1_2"
  nullable    = false
}

variable "enable_https_traffic_only" {
  type        = bool
  description = "(Required) - Forces HTTPS if enabled."
  default     = true
  nullable    = false
}

variable "nfsv3_enabled" {
  type        = bool
  description = "(Required) - Enable nfsv3 protocol."
  default     = false
  nullable    = false
}

variable "allow_nested_items_to_be_public" {
  type        = bool
  nullable    = false
  description = "(Required) - Allow or disallow nested items within this Account to opt into being public."
  default     = false
}

variable "storage_account_access_tier" {
  type        = string
  description = "(Required) - The Storage Account Access Tier"
  default     = "Hot"
  validation {
    condition     = contains(["Hot", "Cool"], var.storage_account_access_tier)
    error_message = "The sku must be one of Hot or Cool."
  }
}


variable "storage_account_is_gen2" {
  type        = bool
  description = "(Required) - Is Hierarchical Namespace or Gen2 SKU in the Storage Account.  Note this generally not have as deep of backup/soft delete options."
  default     = false
  nullable    = false
}

variable "storage_account_containers" {
  type        = set(string)
  default     = []
  description = "(Optional) - Set of private Container names to create within the newly created Storage Account"
  nullable    = false
}

## Network Rules Properties

variable "storage_account_network_default_action" {
  validation {
    condition     = contains(["Allow", "Deny"], var.storage_account_network_default_action)
    error_message = "Must contain 'Allow' or 'Deny'"
  }
  type        = string
  description = "(Optional) - Specifies if default action is to allow or deny traffic to storage account"
  nullable    = false
}

variable "storage_account_allowed_public_ips" {
  type        = list(string)
  description = "(Optional) - Allowed Map of Public IP Addresses to this Storage Account"
  default     = []
  nullable    = false
  validation {
    condition     = can([for ip in var.storage_account_allowed_public_ips : cidrnetmask(ip)])
    error_message = "These must all be valid ipv4 Public IP Addresses."
  }
}

variable "storage_account_network_bypass" {
  type        = list(string)
  description = "(Optional) - Allowed Values for bypassing the Firewall"
  default     = ["AzureServices"]
  nullable    = false
  validation {
    condition     = contains(var.storage_account_network_bypass, "AzureServices") || contains(var.storage_account_network_bypass, "Logging") || contains(var.storage_account_network_bypass, "Metrics") || contains(var.storage_account_network_bypass, "None")
    error_message = "These must any combination of: AzureServices, Logging, Metrics, or None."
  }
}

variable "virtual_network_subnet_ids" {
  type        = list(string)
  description = "(Optional) - Specifies the list of ID's, containing Resource ID Strings of the subnets to allow access for the newly created Storage Account"
  default     = null
  nullable    = true
}

## Identity Properties

variable "identity_type" {
  type        = string
  description = "(Required) - Specifies the type of Managed Service Identity that should be configured on this Storage Account."
  default     = "SystemAssigned"
  nullable    = false

  validation {
    condition     = contains(["SystemAssigned", "UserAssigned", "SystemAssigned, UserAssigned"], var.identity_type)
    error_message = "Must contain 'SystemAssigned', 'SystemAssigned' or 'SystemAssigned, UserAssigned' for Identity Type"
  }
}

variable "identity_ids" {
  type        = list(string)
  description = "(Optional) - Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account."
  default     = null
  nullable    = true
}

## Blob Properties

variable "storage_account_is_versioning_enabled" {
  type        = bool
  description = "(Optional) - Are blobs versioned in the Storage Account?  Defaults to false"
  default     = false
}

variable "change_feed_enabled" {
  type        = bool
  description = "(Optional) - Is the blob service properties for change feed events enabled"
  default     = false
}

variable "soft_delete_blobs_days" {
  type        = number
  description = "(Optional) - The number of days to allow recovery of blobs that were marked for deletion in the newly created Storage Account"
  default     = null
  nullable    = true
}

variable "soft_delete_containers_days" {
  type        = number
  description = "(Optional) - The number of days to allow recovery of containers that were marked for deletion in the newly created Storage Account"
  default     = null
  nullable    = true
}

variable "enable_cmk" {
  type        = bool
  default     = false
  description = "(Optional) - Enable Customer Managed Keys for the Storage Account."
}

variable "key_vault_id" {
  type        = bool
  default     = false
  description = "(Optional) - Key Vault ID for the CMK."
}

variable "key_name" {
  type        = bool
  default     = false
  description = "(Optional) - Key Name of the CMK."
}
