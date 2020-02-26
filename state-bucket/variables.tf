variable "bucket_name" {
  description = "Desired name for s3 backend state bucket"
  type        = string
  default     = null
}

variable "region" {
  description = "Desired region for bucket"
  type        = string
}

variable "canned_acl" {
  description = "Desired AWS canned ACL with prefined grants"
  type        = string
  default     = "private"
}

variable "versioning_status" {
  description = "Desired status for object versioning: True or False"
  type        = bool
}

variable "attach_bucket_policy" {
  description = "Set if bucket should have bucket policy attached to it"
  type        = bool
  default     = false
}

variable "bucket_name_prefix" {
  description = "Create the bucket using a specified prefix for the name"
  type        = string
  default     = null
}

variable "logging_configuration" {
  description = "Access bucket logging configuration"
  type        = map(string)
  default     = {}
}

variable "website" {
  description = "Static web-site hosting and/or redirect configuration."
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "The defining evironement of the Account: DEV, TST, STG, PRD, ROOT"
  type        = string
  default     = null
}

variable "tags" {
  type    = map(string)
  default = {}
}

locals {
  tags = merge(
    var.tags,
    {
      Name        = var.bucket_name
      Environment = var.environment
      Project     = "portfolio"
    },
  )
}

