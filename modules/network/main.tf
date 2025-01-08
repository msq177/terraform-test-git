resource "volcengine_vpc" "vpc" {
  vpc_name    = var.vpc_name
  cidr_block  = var.vpc_cidr
  dns_servers = length(var.vpc_dns_servers) > 0 ? var.vpc_dns_servers : null
}

resource "volcengine_subnet" "subnet" {
  zone_id     = var.zone_id
  cidr_block  = var.subnet_cidr
  subnet_name = var.subnet_name
  vpc_id      = volcengine_vpc.vpc.id
}