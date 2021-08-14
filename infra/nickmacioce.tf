module "aws_static_website" {
  source = "cloudmaniac/static-website/aws"

  website-domain-main     = "nickmacioce.com"
  website-domain-redirect = "www.nickmacioce.com"
}

module "lilmacioce_static_website" {
  source = "cloudmaniac/static-website/aws"

  website-domain-main     = "isbabymaciocehereyet.com"
  website-domain-redirect = "www.isbabymaciocehereyet.com"
}

module "links_static_website" {
  source = "cloudmaniac/static-website/aws"

  website-domain-main     = "links.nickmacioce.com"
  website-domain-redirect = "links.nickmacioce.com"
}