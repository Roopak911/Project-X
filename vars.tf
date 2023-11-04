variable "environment" {
  description = "Deployment Environment"
  type = string
  default = "Project-X"
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
  type = string
  default = "192.168.0.0/16"
}

variable "public_subnets_cidr" {
  type        = list
  description = "CIDR block for Public Subnet"
  default = ["192.168.1.0/24", "192.168.2.0/24"]
}

variable "availability_zones" {
  type        = list
  description = "AZ in which all the resources will be deployed"
  default = ["us-east-1a", "us-east-1b"]
}

variable "private_subnets_cidr" {
  type        = list
  description = "CIDR block for Private Subnet"
  default = ["192.168.3.0/24", "192.168.4.0/24"]
}


