bucket_name       = "tf-state-root-devinitly"
versioning_status = true
logging           = { target_bucket = "134905014910-logging", target_prefix = "log/" }
environment       = "root"
tags              = { Project = "portfolio", Department = "Cloud Engineering" }
