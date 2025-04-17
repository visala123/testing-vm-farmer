terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }
 

  backend "s3" {
    bucket = "terraform-backend-remote-vpc-github-actions"
    key    = "dev\terraform.tfstate"
    region = "ap-northeast-2"
  }
}
provider "aws" {
  region = "ap-northeast-2"
}
