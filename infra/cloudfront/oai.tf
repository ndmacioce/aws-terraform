terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.58.0"
    }
  }
}

resource "aws_cloudfront_origin_access_identity" "nickmacioce-oai" {
  comment = "OAI for all Nick Macioce Buckets as needed."
}