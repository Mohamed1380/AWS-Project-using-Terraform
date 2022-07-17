resource "aws_subnet" "publicsubnet1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidr_public1
  map_public_ip_on_launch = "true"

  tags = {
    Name = "publicsubnet1"
  }
}

resource "aws_subnet" "publicsubnet2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidr_public2
  map_public_ip_on_launch = "true"

  tags = {
    Name = "publicsubnet2"
  }
}

resource "aws_subnet" "privatesubnet1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.cidr_private1

  tags = {
    Name = "privatesubnet1"
  }
}

resource "aws_subnet" "privatesubnet2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.cidr_private2

  tags = {
    Name = "privatesubnet2"
  }
}