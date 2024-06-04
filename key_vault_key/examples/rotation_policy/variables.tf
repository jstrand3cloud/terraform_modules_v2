## Module Properties ##

variable "key_vault_id" {
  description = "This is the resource ID of the Key Vault hosting the Key to be created"
  type        = string
  nullable    = false
}

variable "tags" {
  type        = map(string)
  description = "Azure Tags that should be added to the newly created Key"
  default     = {}
  nullable    = false
}

variable "key_vault_key_name" {
  description = "The Display name of the Key within Azure Key Vault"
  type        = string
  nullable    = false
}

## Optional Module Variables ##
variable "key_vault_key_type" {
  description = "The type of key being created within Azure Key Vault"
  type        = string
  nullable    = false
  default     = "RSA"

  validation {
    condition     = contains(["EC", "EC-HSM", "RSA", "RSA-HSM"], var.key_vault_key_type)
    error_message = "This needs to match a supported RSA key type (EC/EC-HSM/RSA/RSA-HSM)."
  }
}

variable "key_vault_key_size" {
  description = "The size of the RSA key being created. Only valid if using RSA type key"
  type        = number
  nullable    = true
  default     = "4096"
}

variable "key_vault_key_curve" {
  description = "The type of curve to use for EC type keys. Only valid of using EC type key"
  type        = string
  nullable    = true
  default     = null

  validation {
    condition     = contains(["P-256", "P-256K", "P-384", "P-521"], coalesce(var.key_vault_key_curve, "P-256"))
    error_message = "This needs to match a supported curve key type (P-256/P-256K/P-384/P-521)."
  }
}

variable "key_vault_key_opts" {
  description = "The type operations to support for the newly created Azure Key Vault Key"
  type        = list(string)
  nullable    = false
  default = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]
}

variable "key_vault_key_not_before_date" {
  type        = string
  description = "UTC Datetime string where Key is not useable before that time. Provided in Format: Y-m-d'T'H:M:S'Z'"
  default     = null
  nullable    = true
}

variable "key_vault_key_expiration_date" {
  type        = string
  description = "UTC Datetime string where Key is expires after that time. Provided in Format: Y-m-d'T'H:M:S'Z'"
  default     = null
  nullable    = true
}

variable "key_vault_key_is_rotation_policy" {
  description = "A boolean switch for whether this key will be controlled by a rotation policy"
  type        = bool
  default     = false
  nullable    = false
}

variable "key_vault_key_is_rotation_policy_automatic" {
  description = "A boolean switch for whether this key will be controlled by a rotation policy and be automatically rotated"
  type        = bool
  default     = false
  nullable    = false
}

variable "key_vault_key_rotation_policy_expire_after" {
  description = "A ISO 8601 Duration string that indicates how soon to expire a key after a certain date. Must have this property defined for rotation policy set to true"
  type        = string
  default     = "P90D"
  nullable    = false
}

variable "key_vault_key_rotation_policy_notify_before_expiry" {
  description = "A ISO 8601 Duration string that indicates how closely to notify an administrator that this key is about to expire. This property can optionally be set for rotation policy"
  type        = string
  default     = "P59D"
  nullable    = false
}

variable "key_vault_key_automatic_time_after_creation" {
  description = "A ISO 8601 Duration string that indicates how soon to rotate a key after a certain date. Both this and the 'key_vault_key_automatic_time_after_creation' property must be set for rotation policy automatic set to true"
  type        = string
  default     = "P60D"
  nullable    = false
}

variable "key_vault_key_automatic_time_before_expiry" {
  description = "A ISO 8601 Duration string that indicates how soon to rotate a key before an expiration date. Both this and the 'key_vault_key_automatic_time_after_creation' property must be set for rotation policy automatic set to true"
  type        = string
  default     = "P30D"
  nullable    = false
}