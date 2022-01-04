variable "bucket-name" {
  description = "Name for the Bucket"
  type        = string
}

variable "tags" {
  description = "Tags added to resources"
  default     = {}
  type        = map(string)
}