module "devinitly-root-terraform-state" {
  source            = "github.com/joeterlecki/terraform-aws-s3-bucket.git?ref=v1.4.5"
  bucket_name       = var.bucket_name
  versioning_status = var.versioning_status
  logging           = var.logging
  environment       = var.environment
  tags              = var.tags
}
