module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  #subnet_cidr = var.subnet_cidr
}

module "sg" {
    source = "./modules/sg"
    vpc_id = module.vpc.vpc_id    
    }

module "ec2_instance" {
  source         = "./modules/ec2"
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  key_name       = var.ec2_key_name
  instance_name  = var.instance_name
  subnet_id      = module.vpc.subnet_ids[0]
  vpc_security_group_ids = [module.sg.sg_id]
  
}

