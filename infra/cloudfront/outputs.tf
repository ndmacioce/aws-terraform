output "oai_arn" {
  description = "ARN for Origin Access Identity"
  value       = aws_cloudfront_origin_access_identity.nickmacioce-oai.iam_arn
}