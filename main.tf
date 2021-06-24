provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "macioce-tf-state"
    region = "us-west-2"
  }
}

module "s3" {
  source = "./infra"
}