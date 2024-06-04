variable "display_name" {
  type        = string
  default     = null
  description = "(Required) The display name for the group."
}

variable "owners" {
  type        = set(string)
  default     = null
  description = "(Optional) A set of object IDs of principals that will be granted ownership of the group. Supported object types are users or service principals. By default, the principal being used to execute Terraform is assigned as the sole owner. Groups cannot be created with no owners or have all their owners removed."
}

variable "security_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Whether the group is a security group for controlling access to in-app resources. At least one of security_enabled or mail_enabled must be specified. A Microsoft 365 group can be security enabled and mail enabled (see the types property)."
}