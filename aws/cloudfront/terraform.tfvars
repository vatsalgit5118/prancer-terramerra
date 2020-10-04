enabled                           = true
is_ipv6_enabled                   = false
comment                           = "Managed by Terraform & Prancer"
default_root_object               = "index.html"
price_class                       = "PriceClass_100"
log_include_cookies               = false
bucket                            = "prancer-cf-bucket"
log_prefix                        = "prefix"
aliases                           = []
custom_error_response             = []
origin_domain_name                = "www.pracer.io"
origin_path                       = ""
origin_http_port                  = 80
origin_https_port                 = 443
origin_protocol_policy            = "match-viewer"
origin_ssl_protocols              = ["TLSv1", "TLSv1.1", "TLSv1.2"]
origin_keepalive_timeout          = 60
origin_read_timeout               = 60
acm_certificate_arn               = ""
viewer_minimum_protocol_version   = "TLSv1"
allowed_methods                   = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
cached_methods                    = ["GET", "HEAD"]
compress                          = false
forward_headers                   = []
forward_query_string              = false
forward_cookies                   = "none"
forward_cookies_whitelisted_names = []
viewer_protocol_policy            = "redirect-to-https"
default_ttl                       = 60
min_ttl                           = 0
max_ttl                           = 31536000
web_acl_id                        = ""
geo_restriction_type              = "none"
geo_restriction_locations         = []

tags = {
  Environment = "Production"
  Project = "Prancer"
}