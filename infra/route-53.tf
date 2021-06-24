resource "aws_route53_zone" "baby-macioce" {
  name = "isbabymaciocehereyet.com"

  tags = {
    Environment = "prod"
  }
}