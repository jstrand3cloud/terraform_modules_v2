## Module Properties ##

variable "key_vault_id" {
  description = "This is the resource ID of the Key Vault hosting the Access Policy to be created"
  type        = string
  nullable    = false
}

variable "access_policy_object_id" {
  description = "The Object ID GUID of the Principal being granted access to the Access Policy"
  type        = string
  nullable    = false
}

variable "key_vault_access_policy" {
  description = "The associated properties for the newly created access policies"
  type = object(
    {
      certificate_permissions = optional(list(string))
      key_permissions         = optional(list(string))
      secret_permissions      = optional(list(string))
      storage_permissions     = optional(list(string))
    }
  )
  nullable = false
}