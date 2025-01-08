module "network" {
  source = "../../modules/network"

  vpc_name    = "tf-test-vpc-dev-new"
  vpc_cidr    = "10.4.0.0/16"
  subnet_cidr = "10.4.0.0/24"
  subnet_name = "tf-test-subnet-dev-new"
}