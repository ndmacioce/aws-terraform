resource "aws_s3_bucket" "b" {
  bucket = "macioce-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}