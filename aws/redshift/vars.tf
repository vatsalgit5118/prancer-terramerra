variable "cluster_identifier" {}
variable "cluster_node_type" {}
variable "cluster_number_of_nodes" {}
variable "cluster_database_name" {}
variable "cluster_master_username" {}
variable "cluster_master_password" {}
variable "cluster_port" {}
variable "vpc_security_group_ids" {}
variable "redshift_subnet_group_name" {}
variable "parameter_group_name" {}
variable "publicly_accessible" {}
variable "snapshot_identifier" {}
variable "snapshot_cluster_identifier" {}
variable "owner_account" {}
variable "final_snapshot_identifier" {}
variable "skip_final_snapshot" {}
variable "preferred_maintenance_window" {}
variable "allow_version_upgrade" {}
variable "snapshot_copy_destination_region" {}
variable "automated_snapshot_retention_period" {}
variable "cluster_iam_roles" {}
variable "encrypted" {}
variable "kms_key_id" {}
variable "enhanced_vpc_routing" {}
variable "enable_logging" {}
variable "logging_bucket_name" {}
variable "logging_s3_key_prefix" {}

variable "parameter_name" {}
variable "parameter_family" {}
variable "parameter_map" {}

variable "tags" {
  type = map
}
