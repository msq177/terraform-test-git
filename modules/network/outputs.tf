output "vpc_id" {
  description = "The id of vpc."
  value       = volcengine_vpc.vpc.id
}

output "subnet_id" {
  description = "The id of subnet."
  value       = volcengine_subnet.subnet.id
}