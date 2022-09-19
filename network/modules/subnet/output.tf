################################
# Subnet IDs
################################

output "pub_sub_a_id" {
  value = aws_subnet.pub_sub_a.id
}

output "pub_sub_c_id" {
  value = aws_subnet.pub_sub_c.id
}

output "pri_sub_a_id" {
  value = aws_subnet.pub_sub_a.id
}

output "pri_sub_c_id" {
  value = aws_subnet.pub_sub_c.id
}

################################
# Subnet ARNs
################################

output "pub_sub_a_arn" {
  value = aws_subnet.pub_sub_a.arn
}

output "pub_sub_c_arn" {
  value = aws_subnet.pub_sub_c.arn
}

output "pri_sub_a_arn" {
  value = aws_subnet.pub_sub_a.arn
}

output "pri_sub_c_arn" {
  value = aws_subnet.pub_sub_c.arn
}