variable "subscription_id" {
  type        = string
  default     = null
  description = "(Optional) A subscription ID for scope.  Either a management group name, a subscription ID, or scope must be provided."
}

variable "management_group_name" {
  type        = string
  default     = null
  description = "(Optional) A management group name or UUID.  Either a management group name, a subscription ID, or scope must be provided."
}

variable "scope" {
  type        = string
  default     = null
  description = "(Optional) An Azure resource ID used for scope.  Either a management group name, a subscription ID, or scope must be provided."
}

variable "role_definition" {
  type        = string
  default     = null
  description = "(Required) The name of a built in role such as Contributor"
}

variable "principal_id" {
  type        = string
  default     = null
  description = "(Required) The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created. The Principal ID is also known as the Object ID (ie not the Application ID for applications)."
}