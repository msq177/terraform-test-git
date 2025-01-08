variable "vpc_id" {
  default     = ""
  description = "The vpc id used to launch resources."
}

variable "vpc_name" {
  default     = "tf-modules-vpc"
  description = "The vpc name used to launch a new vpc when 'vpc_id' is not specified."
}

variable "vpc_cidr" {
  default     = "172.16.0.0/16"
  description = "The cidr block used to launch a new vpc when 'vpc_id' is not specified."
}

variable "vpc_dns_servers" {
  type        = list(string)
  default     = []
  description = "Specify the vpc dns servers when 'vpc_id' is not specified."
}

variable "zone_id" {
  type        = string
  default     = "cn-beijing-a"
  description = "Specify available zone of VPC subnet and TKE nodes."
}

variable "subnet_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Specify VPC and subnet CIDR."
}

variable "subnet_name" {
  type        = string
  default     = "example-subnet"
  description = "Specify custom Subnet Name."
}