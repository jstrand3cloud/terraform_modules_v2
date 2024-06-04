variable "network_interface_id" {
  description = "(Required) Network interface resource ID"
  type        = string
}

variable "ip_configuration_name" {
  type        = string
  description = "(Required) IP config name on the NIC that should be added to the pool"
}

variable "backend_address_pool_id" {
  description = "(Required) Resource ID of the load balancer pool"
  type        = string
}