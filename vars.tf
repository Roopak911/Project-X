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

variable "public_subnets_cidr" {
  type        = list
  description = "CIDR block for Public Subnet"
  default = ["10.0.1.0/24", "10.0.2.0/24"]
  }
