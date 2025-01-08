terraform {
  required_providers {
    volcengine = {
      source = "volcengine/volcengine"
      version = ">=0.0.150"
    }
  }

  backend "s3" {
    bucket   = "terraform-demo" #存储桶名称
    key      = "terraform-demo/terraform.tfstate" #对象名称
    region   = "cn-beijing" #存储桶所在地域
    endpoints = {
      s3 = "https://tos-s3-cn-beijing.volces.com" #TOS的S3域名
    }

    skip_region_validation      = true
    skip_metadata_api_check     = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
}

provider "volcengine" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
  endpoint   = var.endpoint
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "region" {
  type = string
}
