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

module "aws_static_website_3" {
  source = "../modules/static-site"

  hosted-zone-name    = "nickmacioce.com" # UPDATE ME WITH CORRECT HOSTED ZONE!!
  website-domain-main = "links.nickmacioce.com" # UPDATE ME WITH DOMAIN NAME. NOTE THIS MAY OR MAY NOT BE THE SAME AS THE HOSTED ZONE DEPENDING ON ENV.
}