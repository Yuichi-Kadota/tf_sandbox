################################################################################
# VPC
################################################################################

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_arn" {
  value = module.vpc.vpc_arn
}

################################################################################
# Subnet
################################################################################

output "pub_sub_a_id" {
  value = module.subnet.pub_sub_a_id
}

output "pub_sub_c_id" {
  value = module.subnet.pub_sub_c_id
}

output "pri_sub_a_id" {
  value = module.subnet.pub_sub_a_id
}

output "pri_sub_c_id" {
  value = module.subnet.pub_sub_c_id
}

output "pub_sub_a_arn" {
  value = module.subnet.pub_sub_a_arn
}

output "pub_sub_c_arn" {
  value = module.subnet.pub_sub_c_arn
}

output "pri_sub_a_arn" {
  value = module.subnet.pub_sub_a_arn
}

output "pri_sub_c_arn" {
  value = module.subnet.pub_sub_c_arn
}