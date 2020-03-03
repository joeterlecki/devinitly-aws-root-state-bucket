module "devinitly-root-terraform-state" {
  source            = "git::https://gitlab.com/devinitly/terraform/modules/terraform-aws-s3-bucket.git?ref=v1.3.2"
  bucket_name       = var.bucket_name
  region            = var.region
  versioning_status = var.versioning_status
  environment       = var.environment
  tags              = var.tags
}
