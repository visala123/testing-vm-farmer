variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}
variable "subnet_cidr" {
    description = "Subnet CIDRS"
    type = list(string)
}
variable "aws_region" {}
#variable "aws_access_key" {}
#variable "aws_secret_key" {}
variable "ec2_key_name" {}
variable "instance_type" {}
variable "ami_id" {}
variable "instance_name" {}
