terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}
#provider settings can be used inside variables assxasx
provider "aws" {
  region = "ap-south-1"
}

# VPC hchmcmcjvjv
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"

  tags = {
    Name = "${var.environment}-vpc"
  }
}

# Public subnet for vpc gfxhfx
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  count                   = length(var.public_subnets_cidr)
  cidr_block              = element(var.public_subnets_cidr, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.environment}-${element(var.availability_zones, count.index)}-public-subnet"
  }
}
