resource "aws_subnet" "public-webtier-subnet-1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public-webtier-subnet-1-cidr
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "farmer-subnet-public1-ap-south-1a"
  }
}

###  public Subnet 2 - Webtier  ###

resource "aws_subnet" "public-webtier-subnet-2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public-webtier-subnet-2-cidr
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "farmer-subnet-public2-ap-south-1b"
  }
}

###  Private Subnet 1 - Apptier  ###

resource "aws_subnet" "private-apptier-subnet-1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.private-apptier-subnet-1-cidr
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "farmer-subnet-private1-ap-south-1a"
  }
}

###  Private Subnet 2 - Apptier  ###


resource "aws_subnet" "private-apptier-subnet-2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.private-apptier-subnet-2-cidr
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "farmer-subnet-private2-ap-south-1b"
  }
}
