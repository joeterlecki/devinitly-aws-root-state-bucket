module "devinitly-root-terraform-state" {
    source = "git::https://gitlab.com/aws-cloud-automation/terraform-modules/aws-s3-terraform-state.git?ref=v1.2"
    bucket_name = "devinitly-root-tf-state"
    region = "us-east-1"
    environment = "root"
    sse_algorithm = "AES256"
    versioning_status = "true"
    canned_acl= "private"
}