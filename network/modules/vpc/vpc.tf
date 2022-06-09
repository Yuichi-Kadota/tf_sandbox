################################################################################
# VPC
################################################################################

resource "aws_vpc" "vpc" {
  cidr_block                       = var.cidr
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  assign_generated_ipv6_cidr_block = var.enable_ipv6

  tags = merge(
    { "Name" = "${var.name}-${var.env}-vpc" },
    var.vpc_tags,
  )
}
