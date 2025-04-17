terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }

  resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-backend-remote-ec2-github-actions" # Must be globally unique
   key    = "dev\terraform.tfstate"
    region = "ap-northeast-2"

  tags = {
    Name        = "terraform-backend-remote-ec2-github-actions"
   
  }
}
 /* backend "s3" {
    bucket = "terraform-backend-remote-vpc-github-actions"
    key    = "dev\terraform.tfstate"
    region = "ap-northeast-2"
  }
}*/
provider "aws" {
  region = "ap-northeast-2"
}
