variable "loadbalancer_id" {
  description = "(Required) Load balancer resource ID"
  type        = string
}

variable "name" {
  description = "(Required) Rule name"
  type        = string
}

variable "protocol" {
  description = "(Required) Network protocol. For HA Ports, set FrontEnd and backend to 0 and protcol to All"
  type        = string
  validation {
    condition     = contains(["Tcp", "Udp", "All"], var.protocol)
    error_message = "The protocol variable must be 'Tcp', 'Udp', or 'All'."
  }
}

variable "frontend_port" {
  description = "(Required) Port for the frontend. For HA Ports, set FrontEnd and backend to 0 and protcol to All"
  type        = number
}

variable "backend_port" {
  description = "(Required) Port for the backend. For HA Ports, set FrontEnd and backend to 0 and protcol to All"
  type        = string
}

variable "frontend_ip_configuration_name" {
  description = "(Required) Name of the frontend ip configuration on the LB"
  type        = string
}

variable "backend_address_pool_ids" {
  description = "(Required) List pool address IDs. This should normally be a single element"
  type        = list(string)
}

variable "probe_id" {
  description = "(Required) Health probe ID"
  type        = string
}

variable "enable_floating_ip" {
  description = "(Required) Should floating IP be enabled?"
  type        = bool
}

variable "load_distribution" {
  description = "(Optional) How should client persistence be handled. Default is Client IP and Protocol"
  type        = string
  default     = "SourceIPProtocol"
}

variable "disable_outbound_snat" {
  description = "(Optional) Should outbound SNAT be disabled?"
  type        = bool
  default     = true
}