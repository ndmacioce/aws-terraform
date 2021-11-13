# module "aws_static_website" {
#   source = "cloudmaniac/static-website/aws"

#   website-domain-main     = "nickmacioce.com"
#   website-domain-redirect = "www.nickmacioce.com"
# }

# module "lilmacioce_static_website" {
#   source = "cloudmaniac/static-website/aws"

#   website-domain-main     = "isbabymaciocehereyet.com"
#   website-domain-redirect = "www.isbabymaciocehereyet.com"
# }

module "nickmacioce" {
  source = "../modules/static-site"

  hosted-zone-name    = "nickmacioce.com" # UPDATE ME WITH CORRECT HOSTED ZONE!!
  website-domain-main = "nickmacioce.com" # UPDATE ME WITH DOMAIN NAME. NOTE THIS MAY OR MAY NOT BE THE SAME AS THE HOSTED ZONE DEPENDING ON ENV.
}

module "links-nickmacioce" {
  source = "../modules/static-site"

  hosted-zone-name    = "nickmacioce.com"       # UPDATE ME WITH CORRECT HOSTED ZONE!!
  website-domain-main = "links.nickmacioce.com" # UPDATE ME WITH DOMAIN NAME. NOTE THIS MAY OR MAY NOT BE THE SAME AS THE HOSTED ZONE DEPENDING ON ENV.
}

module "isbabymaciocehereyet" {
  source = "../modules/static-site"

  hosted-zone-name    = "isbabymaciocehereyet.com" # UPDATE ME WITH CORRECT HOSTED ZONE!!
  website-domain-main = "isbabymaciocehereyet.com" # UPDATE ME WITH DOMAIN NAME. NOTE THIS MAY OR MAY NOT BE THE SAME AS THE HOSTED ZONE DEPENDING ON ENV.
}