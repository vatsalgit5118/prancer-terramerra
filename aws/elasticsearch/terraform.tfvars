domain_name                                              = "prancer-esearch"
elasticsearch_version                                    = "7.4"
advanced_options                                         = {}
advanced_security_options_enabled                        = false
advanced_security_options_internal_user_database_enabled = false
advanced_security_options_master_user_arn                = ""
advanced_security_options_master_user_name               = ""
advanced_security_options_master_user_password           = ""
ebs_volume_size                                          = 10
ebs_volume_type                                          = "gp2"
ebs_iops                                                 = 0
encrypt_at_rest_enabled                                  = false
encrypt_at_rest_kms_key_id                               = ""
domain_endpoint_options_enforce_https                    = false
domain_endpoint_options_tls_security_policy              = "Policy-Min-TLS-1-0-2019-07"
instance_count                                           = 4
instance_type                                            = "t2.small.elasticsearch"
dedicated_master_enabled                                 = false
dedicated_master_count                                   = 3
dedicated_master_type                                    = "t2.small.elasticsearch"
zone_awareness_enabled                                   = false
warm_enabled                                             = false
warm_count                                               = 2
warm_type                                                = "ultrawarm1.medium.elasticsearch"
zone_awareness_config                                    = [{availability_zone_count = 2}]
node_to_node_encryption_enabled                          = false
vpc_enabled                                              = false
subnet_ids                                               = []
automated_snapshot_start_hour                            = 0
cognito_authentication_enabled                           = false
cognito_user_pool_id                                     = ""
cognito_identity_pool_id                                 = ""
cognito_iam_role_arn                                     = ""
log_publishing_index_enabled                             = false
log_publishing_index_cloudwatch_log_group_arn            = ""
log_publishing_search_enabled                            = false
log_publishing_search_cloudwatch_log_group_arn           = ""
log_publishing_application_enabled                       = false
log_publishing_application_cloudwatch_log_group_arn      = ""

tags                                = {
  environment = "Production"
  project = "Prancer"
}
