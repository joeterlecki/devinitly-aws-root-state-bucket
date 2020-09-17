bucket_name       = "devinitly-root-terraform-state"
versioning_status = true
logging           = { target_bucket = "devinitly-root-logging", target_prefix = "log/" }
environment       = "root"
tags              = { Project = "portfolio", Department = "Cloud Engineering" }
