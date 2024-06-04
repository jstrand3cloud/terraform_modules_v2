## Shared Properties ##

variable "location" {
  description = "The Azure Region in which to the newly created Azure Key Vault"
  type        = string
  nullable    = false
}

variable "tags" {
  type        = map(string)
  description = "Azure Tags that should be added to the newly created Azure Key Vault"
  default     = {}
  nullable    = false
}

## Module Properties ##

variable "key_vault_name" {
  description = "The display name of the Azure Key Vault to be created"
  type        = string
  nullable    = false
}

variable "key_vault_resource_group_name" {
  description = "The name of the resource group of the Azure Key Vault to be created"
  type        = string
  nullable    = false
}

variable "key_vault_default_access_policy" {
  description = "The default keyvault access policy.  Other access_policies can be added via additional modules and key_vault can be set to null, if using Key Vault RBAC authorization"
  nullable    = true
  default     = null
  type = object(
    {
      certificate_permissions = optional(list(string))
      key_permissions         = optional(list(string))
      secret_permissions      = optional(list(string))
      storage_permissions     = optional(list(string))
    }
  )
}

variable "key_vault_default_access_policy_named" {
  description = "The name of a Key Vault Management Template, as described in the 'azurerm_key_vault_access_policy' datasource. The custom permissions take precedence over key_vault template"
  type        = string
  nullable    = true
  default     = "Secret Management"

  validation {
    condition = contains(["Key Management", "Secret Management", "Certificate Management", "Key & Secret Management",
      "Key & Certificate Management", "Secret & Certificate Management",
    "Key, Secret, & Certificate Management"], var.key_vault_default_access_policy_named)
    error_message = "key_vault needs to match a supported Management Template from the 'azurerm_key_vault_access_policy' data source."
  }
}

## Module Optional Properties ##

variable "soft_delete_retention_days" {
  description = "The number of days to retain key_vault keyvault/secrets if they were deleted"
  type        = number
  default     = 90
  nullable    = true
}

variable "purge_protection_enabled" {
  description = "Indicate whether a keyvault/secrets can be purged once they were deleted"
  type        = bool
  default     = false
  nullable    = false
}

variable "key_vault_sku_name" {
  description = "(required)"
  type        = string
  default     = "standard"
  nullable    = false

  validation {
    condition     = contains(["standard", "premium"], var.key_vault_sku_name)
    error_message = "key_vault needs to match a supported Key Vault SKU (standard/premium)."
  }
}

variable "enabled_for_disk_encryption" {
  description = "Determine whether the keyvault can be used to retrieve secrets to unwrap keys for disk encryption"
  type        = bool
  default     = false
  nullable    = false
}

variable "enable_rbac_authorization" {
  description = "Determine whether authorization using RBAC can be used for the keyvault"
  type        = bool
  default     = false
  nullable    = false
}

variable "enabled_for_deployment" {
  description = "Determine whether Virtual Machines can access certificates stored within the keyvault"
  type        = bool
  default     = false
  nullable    = false
}

variable "enabled_for_template_deployment" {
  description = "Determine whether Azure Resource Manager can access secrets stored within the keyvault"
  type        = bool
  default     = false
  nullable    = false
}

variable "key_vault_public_access_enabled" {
  description = "A boolean flag to determine if the Key Vault should be publicly accessible"
  type        = bool
  default     = false
  nullable    = false
}

variable "key_vault_network_acls" {
  description = "The network restriction rules for the keyvault"
  type = set(object(
    {
      bypass                     = string
      default_action             = string
      allowed_ip_rules           = set(string)
      virtual_network_subnet_ids = optional(set(string))
    }
  ))
  default  = []
  nullable = false

  validation {
    condition     = length(tolist(var.key_vault_network_acls)) <= 1
    error_message = "key_vault variable only supports a single object of network_acls properties."
  }
}
