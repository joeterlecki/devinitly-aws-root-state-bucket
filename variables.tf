variable "bucket_name" {
  description = "Desired name for s3 backend state bucket"
  type        = string
  default     = null
}

variable "canned_acl" {
  description = "Desired AWS canned ACL with prefined grants"
  type        = string
  default     = "private"
}

variable "versioning_status" {
  description = "Desired status for object versioning: True or False"
  type        = bool
  default     = false
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

variable "logging" {
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
  description = "Desired tags for the bucket"
  type        = map(string)
  default     = {}
}

locals {
  tags = merge(
    var.tags,
    {
      Name        = var.bucket_name
      Environment = var.environment
    },
  )
}

