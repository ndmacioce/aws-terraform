variable "website-domain-main" {
  description = "Main website domain, e.g. cloudmaniac.net"
  type        = string
}

variable "hosted-zone-name" {
  description = "Name of the hosted zone. It may or may not match the website-domain-main value. For example in PROD, you might have example.com for both. But in DEV you might have hosted zone as example.com and domain as dev.example.com"
  type        = string
}

variable "tags" {
  description = "Tags added to resources"
  default     = {}
  type        = map(string)
}