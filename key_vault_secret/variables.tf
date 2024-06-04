## Module Properties ##

variable "key_vault_id" {
  description = "This is the resource ID of the Key Vault hosting the Secret to be created"
  type        = string
  nullable    = false
}

variable "tags" {
  type        = map(string)
  description = "Azure Tags that should be added to the newly created Secret"
  default     = {}
  nullable    = false
}

variable "key_vault_secret_name" {
  description = "The Display name of the secret within Azure Key Vault"
  type        = string
  nullable    = false
}

variable "key_vault_secret_value" {
  description = "The Display name of the secret within Azure Key Vault"
  type        = string
  sensitive   = true
  nullable    = false
}

## Optional Module Variables ##
variable "key_vault_secret_content_type" {
  type        = string
  description = "Open Text description of the type of secret needed. Useful for metadata only and not required"
  default     = null
  nullable    = true
}

variable "key_vault_secret_not_before_date" {
  type        = string
  description = "UTC Datetime string where Secret is not useable before that time. Provided in Format: Y-m-d'T'H:M:S'Z'"
  default     = null
  nullable    = true
}

variable "key_vault_secret_expiration_date" {
  type        = string
  description = "UTC Datetime string where Secret is expires after that time. Provided in Format: Y-m-d'T'H:M:S'Z'"
  default     = null
  nullable    = true
}