variable "environment" {
  description = "Deployment Environment"
  type = string
  default = "Project-X"
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
  type = string
  default = "10.0.0.0/16"
}
