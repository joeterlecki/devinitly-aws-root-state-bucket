data "aws_caller_identity" "current" {}

module "devinitly-root-terraform-state" {
  source            = "git::https://github.com/terraform-aws-iac/terraform-aws-s3-bucket-aes.git?ref=v1.5.0"
  bucket_name       = "${data.aws_caller_identity.current.account_id}-tfstate"
  versioning_status = var.versioning_status
  logging           = var.logging
  environment       = var.environment
  tags              = var.tags
  canned_acl               = var.canned_acl
}
