provider "aws" {
  region = "us-east-1"
  version = "~> 2.60.0"
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