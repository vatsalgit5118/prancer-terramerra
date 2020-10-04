variable "enabled" {}
variable "is_ipv6_enabled" {}
variable "comment" {}
variable "default_root_object" {}
variable "price_class" {}
variable "log_include_cookies" {}
variable "bucket" {}
variable "log_prefix" {}
variable "aliases" {}
variable "custom_error_response" {}
variable "origin_domain_name" {}
variable "origin_path" {}
variable "origin_http_port" {}
variable "origin_https_port" {}
variable "origin_protocol_policy" {}
variable "origin_ssl_protocols" {}
variable "origin_keepalive_timeout" {}
variable "origin_read_timeout" {}
variable "acm_certificate_arn" {}
variable "viewer_minimum_protocol_version" {}
variable "allowed_methods" {}
variable "cached_methods" {}
variable "compress" {}
variable "forward_headers" {}
variable "forward_query_string" {}
variable "forward_cookies" {}
variable "forward_cookies_whitelisted_names" {}
variable "viewer_protocol_policy" {}
variable "default_ttl" {}
variable "min_ttl" {}
variable "max_ttl" {}
variable "web_acl_id" {}
variable "geo_restriction_type" {}
variable "geo_restriction_locations" {}

variable "tags" {
  type = map
}