bucket_name                                     = "prancer-s3-bucket"
bucket_acl                                      = "private"
acceleration_status                             = "Suspended"
versioning_enabled                              = false
cors_allowed_headers                            = ["Authorization"]
cors_allowed_methods                            = ["GET"]
cors_allowed_origins                            = ["*"]
cors_expose_headers                             = []
cors_max_age_seconds                            = 3000
lifecycle_infrequent_storage_transition_enabled = false
lifecycle_infrequent_storage_object_prefix      = ""
lifecycle_infrequent_storage_object_tags        = {}
lifecycle_days_to_infrequent_storage_transition = 60
lifecycle_glacier_transition_enabled            = false
lifecycle_glacier_object_prefix                 = ""
lifecycle_glacier_object_tags                   = {}
lifecycle_days_to_glacier_transition            = 180
transition_noncurrent_versions                  = true
lifecycle_expiration_enabled                    = false
lifecycle_expiration_object_prefix              = ""
lifecycle_expiration_object_tags                = {}
expire_noncurrent_versions                      = true
lifecycle_days_to_expiration                    = 365
server_side_encryption_configuration            = []

tags                                     = {
  environment = "Production"
  project = "Prancer"
}