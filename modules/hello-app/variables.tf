variable "environment_name" {
  type        = string
  description = "Name of the environment (e.g., dev, prod)"
}

variable "replica_count" {
  type        = number
  description = "Number of pod replicas"
  default     = 1
}
