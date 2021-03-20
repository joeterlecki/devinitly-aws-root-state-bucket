bucket_name       = "tf-state-root-devinitly"
versioning_status = true
logging           = { target_bucket = "134905014910-logging", target_prefix = "log/" }
environment       = "root"
canned_acl        = "log-delivery-write"
tags              = { Project = "portfolio", Department = "Cloud Engineering" }
