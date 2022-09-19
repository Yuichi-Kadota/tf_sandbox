locals {
  env = "dev"
}

module "vpc" {
  source               = "../modules/vpc"
  name                 = "sandbox"
  env                  = local.env
  cidr                 = "10.1.0.0/16"
  enable_dns_hostnames = true
}

module "subnet" {
  source = "../modules/subnet"
  name   = "sandbox"
  env    = local.env
  vpc_id = module.vpc.vpc_id
}