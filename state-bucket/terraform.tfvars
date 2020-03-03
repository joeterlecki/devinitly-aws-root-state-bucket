bucket_name       = "devinitly-state-bucket"
region            = "us-east-1"
versioning_status = true
environment       = "root"
logging           = { target_bucket = "devinitly-test-logging-bucket", target_prefix = "log/" }
tags              = { Project = "portfolio", Department = "Cloud Engineering" }
