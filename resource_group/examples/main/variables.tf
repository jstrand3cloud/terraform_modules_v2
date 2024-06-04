variable "tags" {
  type        = map(string)
  description = "Additional default tags to add to the resources being deployed at this layer."
  default     = {}
}

variable "name" {
  description = "Name for this Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region to create the resource in"
  type        = string
}