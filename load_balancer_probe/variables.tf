variable "loadbalancer_id" {
  description = "(Required) Resource of load balancer"
  type        = string
}

variable "name" {
  description = "(Required) Probe name"
  type        = string
}

variable "port" {
  description = "(Required) Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive."
  type        = number
}

variable "protocol" {
  description = "(Required) Specifies the protocol of the end point. Possible values are Http, Https or Tcp. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful."
  type        = string
}

variable "probe_threshold" {
  description = "(Optional) The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from 1 to 100. The default value is 1."
  type        = number
  default     = null
}

variable "request_path" {
  description = "(Optional) The URI used for requesting health status from the backend endpoint. Required if protocol is set to Http or Https. Otherwise, it is not allowed."
  type        = string
  default     = null
}

variable "interval_in_seconds" {
  description = "(Optional) The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5."
  type        = number
  default     = null
}

variable "number_of_probes" {
  description = "(Optional) The number of failed probe attempts after which the backend endpoint is removed from rotation. The default value is 2. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful."
  type        = number
  default     = null
}
