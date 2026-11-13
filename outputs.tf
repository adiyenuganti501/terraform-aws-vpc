output "vpc_id" {
  value = aws_vpc.main.id
}
output "pub_subnet_ids" {
  value = aws_subnet.public[*].id
}

# output "pri_subnet_ids" {
#   value = aws_subnet.private[*].id
  
# }

output "azs_info" {
  value = slice(data.aws_availability_zones.available.zone_ids, 0,2)
}   