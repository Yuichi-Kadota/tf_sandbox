provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      createdBy = "terraform"
      service   = "sandbox"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "kd-tf-sandbox"
    key    = "network/terraform.tfstate"
    region = "ap-northeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
}
