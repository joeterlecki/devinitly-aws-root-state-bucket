bucket_name       = "devinitly-root-tf-state"
region            = "us-east-1"
versioning_status = true
logging           = { target_bucket = "devinitly-root-logging", target_prefix = "log/" }
environment       = "root"
tags              = { Project = "portfolio", Department = "Cloud Engineering" }
