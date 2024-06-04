variable "name" {
  description = "(Required) Name of pool to create"
  type        = string
}

variable "loadbalancer_id" {
  type        = string
  description = "(Required) Resource ID of the load balancer"
}