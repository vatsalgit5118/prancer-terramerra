data "aws_region" "current" {}

module "vpc" {
  source  = "../modules/vpc"
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_classiclink               = var.enable_classiclink
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  enable_ipv6                      = var.enable_ipv6
  tags                             = var.tags
}

module "internet_gateway" {
  source  = "../modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
  tags   = var.tags
}

module "subnets" {
  source  = "../modules/subnet"
  count                           = length(var.subnet_cidr_block)
  vpc_id                          = module.vpc.vpc_id
  subnet_cidr_block               = element(var.subnet_cidr_block, count.index)
  availability_zone               = "${data.aws_region.current.name}${element(var.az, count.index)}"
  availability_zone_id            = element(var.availability_zone_id, count.index)
  map_public_ip_on_launch         = var.map_public_ip_on_launch
  assign_ipv6_address_on_creation = var.assign_ipv6_address_on_creation
  ipv6_cidr_block                 = var.ipv6_cidr_block
  tags                            = var.tags
}

module "lb" {
  source  = "../modules/lb"
  name                             = var.lb_name
  name_prefix                      = var.name_prefix
  load_balancer_type               = var.load_balancer_type
  internal                         = var.internal
  security_groups                  = var.security_groups
  subnets                          = [module.subnets[0].id, module.subnets[1].id]
  access_logs                      = var.access_logs
  idle_timeout                     = var.idle_timeout
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  enable_deletion_protection       = var.enable_deletion_protection
  enable_http2                     = var.enable_http2
  ip_address_type                  = var.ip_address_type
  drop_invalid_header_fields       = var.drop_invalid_header_fields
  subnet_mapping                   = var.subnet_mapping
}

module "elb" {
  source = "../modules/elb"
  name                        = var.elb_name
  availability_zones          = var.availability_zones
  security_groups             = var.security_groups
  logging_enabled             = var.logging_enabled
  bucket                      = var.bucket
  bucket_prefix               = var.bucket_prefix
  log_interval                = var.log_interval
  listener                    = var.listener
  healthy_threshold           = var.healthy_threshold
  unhealthy_threshold         = var.unhealthy_threshold
  timeout                     = var.timeout
  target                      = var.target
  check_interval              = var.check_interval
  instances                   = var.instances
  cross_zone_load_balancing   = var.cross_zone_load_balancing
  idle_timeout                = var.idle_timeout
  connection_draining         = var.connection_draining
  connection_draining_timeout = var.connection_draining_timeout
}

module "elb_policy" {
  source  = "../modules/elbPolicy"
  elb_name             = module.elb.id
  policy_name          = var.policy_name
  policy_type          = var.policy_type
  policy_attribute_map = var.policy_attribute_map
}
