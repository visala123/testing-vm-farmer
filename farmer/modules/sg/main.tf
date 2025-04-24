resource "aws_security_group" "sg" {
  name        = "sg"
  description = "Allow HTTP,HTTPS, SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress =[
    {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    cidr_blocks      = ["0.0.0.0/0"]
  },
  {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    cidr_blocks      = ["0.0.0.0/0"]
  },
  {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    cidr_blocks      = ["0.0.0.0/0"]
  },
  {
    description      = "psql"
    from_port        = 5432
    to_port          = 5432
    protocol         = "tcp"
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    cidr_blocks      = ["0.0.0.0/0"]
  },
  {
    description      = "tomcat"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    cidr_blocks      = ["0.0.0.0/0"]
  },
  {
    description      = "tomcat"
    from_port        = 9000
    to_port          = 9000
    protocol         = "tcp"
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ]

  egress = [
   {
    description      = null
    from_port        = 0
    to_port          = 0
    protocol         = "-1"  
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    cidr_blocks      = ["0.0.0.0/0"]
  }
 
  
  ]

  tags = {
    Name = "farmer-sg"
  }
} 

