#module "network" {
#  source = "../../modules/network"
#
#  vpc_name    = "tf-test-vpc-dev-demo"
#  vpc_cidr    = "10.4.0.0/16"
#  subnet_cidr = "10.4.0.0/24"
#  subnet_name = "tf-test-subnet-dev-demo"
#}

module "network-1" {
  source = "../../modules/network"

  vpc_name    = "tf-test-vpc-dev-demo-1"
  vpc_cidr    = "10.4.0.0/16"
  subnet_cidr = "10.4.0.0/24"
  subnet_name = "tf-test-subnet-dev-demo"
}
