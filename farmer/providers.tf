terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }
  resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-backend-remote-vpc-github-actions"
  acl    = "private"

  tags = {
    Name        = "terraform-backend-remote-vpc-github-actions"
    Environment = "Dev"
  }
}

 /* backend "s3" {
    bucket = "terraform-backend-remote-vpc-github-actions"
    key    = "dev\terraform.tfstate"
    region = "ap-northeast-2"
  }*/
}
provider "aws" {
  region = "ap-northeast-2"
}
