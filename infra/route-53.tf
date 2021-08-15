resource "aws_route53_zone" "baby-macioce" {
  name = "isbabymaciocehereyet.com"

  tags = {
    Environment = "prod"
  }
}

resource "aws_route53_zone" "nickmacioce" {
  name = "nickmacioce.com"

  tags = {
    Environment = "prod"
  }
}