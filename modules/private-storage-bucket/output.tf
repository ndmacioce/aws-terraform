output "s3_bucket" {
  description = "The website root bucket where resources are uploaded"
  value       = aws_s3_bucket.storage_bucket.bucket
}
