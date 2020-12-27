module "s3_bucket" {
  source  = "../modules/s3"
  bucket_name                                     = var.bucket_name
  bucket_acl                                      = var.bucket_acl
  acceleration_status                             = var.acceleration_status
  versioning_enabled                              = var.versioning_enabled
  cors_allowed_headers                            = var.cors_allowed_headers
  cors_allowed_methods                            = var.cors_allowed_methods
  cors_allowed_origins                            = var.cors_allowed_origins
  cors_expose_headers                             = var.cors_expose_headers
  cors_max_age_seconds                            = var.cors_max_age_seconds
  lifecycle_infrequent_storage_transition_enabled = var.lifecycle_infrequent_storage_transition_enabled
  lifecycle_infrequent_storage_object_prefix      = var.lifecycle_infrequent_storage_object_prefix
  lifecycle_infrequent_storage_object_tags        = var.lifecycle_infrequent_storage_object_tags
  lifecycle_days_to_infrequent_storage_transition = var.lifecycle_days_to_infrequent_storage_transition
  lifecycle_glacier_transition_enabled            = var.lifecycle_glacier_transition_enabled
  lifecycle_glacier_object_prefix                 = var.lifecycle_glacier_object_prefix
  lifecycle_glacier_object_tags                   = var.lifecycle_glacier_object_tags
  lifecycle_days_to_glacier_transition            = var.lifecycle_days_to_glacier_transition
  transition_noncurrent_versions                  = var.transition_noncurrent_versions
  lifecycle_expiration_enabled                    = var.lifecycle_expiration_enabled
  lifecycle_expiration_object_prefix              = var.lifecycle_expiration_object_prefix
  lifecycle_expiration_object_tags                = var.lifecycle_expiration_object_tags
  expire_noncurrent_versions                      = var.expire_noncurrent_versions
  lifecycle_days_to_expiration                    = var.lifecycle_days_to_expiration
  server_side_encryption_configuration            = var.server_side_encryption_configuration
  enable_logging                                  = var.enable_logging
  target_bucket                                   = var.target_bucket
  target_prefix                                   = var.target_prefix
  enable_website                                  = var.enable_website
  redirect_all_requests_to                        = var.redirect_all_requests_to
  tags                                            = var.tags
}

module "s3_policy" {
  source       = "../modules/s3policy"
  s3_bucket_id = module.s3_bucket.s3_bucket_id
  s3_policy    = var.s3_policy
}

module "s3_policy_sslonly" {
  source       = "../modules/s3policy"
  s3_bucket_id = module.s3_bucket.s3_bucket_id
  s3_policy    = var.s3_policy_sslonly
}
