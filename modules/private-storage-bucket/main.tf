## S3
# Creates bucket to store the static website
resource "aws_s3_bucket" "storage_bucket" {
  bucket = "${var.bucket-name}"

  # Comment the following line if you are uncomfortable with Terraform destroying the bucket even if not empty
  force_destroy = false

  tags = merge(var.tags, {
    ManagedBy = "terraform"
    Changed   = formatdate("YYYY-MM-DD hh:mm ZZZ", timestamp())
  })

  lifecycle {
    ignore_changes = [tags["Changed"]]
  }
}

resource "aws_s3_bucket_public_access_block" "access_good_1" {
  bucket = aws_s3_bucket.storage_bucket.id

  restrict_public_buckets = true
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
}
