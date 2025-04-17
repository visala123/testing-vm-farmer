resource "aws_subnet" "public-webtier-subnet-1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public-webtier-subnet-1-cidr
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "farmer-subnet-public1-ap-northeast-2a"
  }
}

###  public Subnet 2 - Webtier  ###

resource "aws_subnet" "public-webtier-subnet-2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public-webtier-subnet-2-cidr
  availability_zone       = "ap-northeast-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "farmer-subnet-public2-ap-northeast-2b"
  }
}

###  Private Subnet 1 - Apptier  ###

resource "aws_subnet" "private-apptier-subnet-1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.private-apptier-subnet-1-cidr
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "farmer-subnet-private1-ap-northeast-2a"
  }
}

###  Private Subnet 2 - Apptier  ###


resource "aws_subnet" "private-apptier-subnet-2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.private-apptier-subnet-2-cidr
  availability_zone       = "ap-northeast-2b"
  map_public_ip_on_launch = false

  tags = {
    Name = "farmer-subnet-private2-ap-northeast-2b"
  }
}
