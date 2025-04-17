variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "instance_name" {}
variable "subnet_id" {}
variable "vpc_security_group_ids" {
  description = "List of Security Group IDs to assign to the EC2"
  type        = list(string)
}
