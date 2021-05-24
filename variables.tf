variable "project" {
  type        = string
  description = "The project ID where the network will be created"
}

variable "region" {
  type        = string
  description = "The region where resources will be created"
}

variable "service_name" {
  type        = string
  description = "The name of the service needing workload identity"
}

variable "service_roles" {
  type        = list
  default     = []
  description = "A list of roles or the service"
}
