provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "macioce-tf-state"
    key    = "default.tf"
    region = "us-west-2"
  }
}

module "s3" {
  source = "./infra"
}

module "networking" {
  source = "./infra/networking"
}

module "cloudfront" {
  source = "./infra/cloudfront"
}