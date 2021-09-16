terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.58.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name     = "Main VPC"
    Use      = "Personal"
    Division = "Macioce"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/25"

  tags = {
    Name     = "Private Subnet 1"
    Use      = "Personal"
    Division = "Macioce"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.128/25"

  tags = {
    Name     = "Public Subnet 1"
    Use      = "Personal"
    Division = "Macioce"
  }
}