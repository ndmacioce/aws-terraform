module "aws_static_website" {
  source = "cloudmaniac/static-website/aws"

  website-domain-main     = "nickmacioce.com"
  website-domain-redirect = "www.nickmacioce.com"
}