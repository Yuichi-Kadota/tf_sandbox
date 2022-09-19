provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      createdBy = "terraform"
      service   = "sandbox"
      env       = "dev"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "kd-tf-sandbox"
    key    = "dev/network/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
