###public_subnet
resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_public1_subnet
  availability_zone = var.AZ_1

  tags = {
    Name = "${var.company}_subnet_public1"
  }
}
resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_public2_subnet
  availability_zone = var.AZ_2
  tags = {
    Name = "${var.company}_subnet_public2"
  }
}

###private subnet with NAT
resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_private1_NAT_subnet
   availability_zone = var.AZ_1
  tags = {
    Name = "${var.company}_subnet_private1_NAT"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_private2_NAT_subnet
   availability_zone = var.AZ_2
  tags = {
    Name = "${var.company}_subnet_private1_NAT"
  }
}


### pure  private subnet
resource "aws_subnet" "pure_private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_pure_private1_subnet
   availability_zone = var.AZ_2
  tags = {
    Name = "${var.company}_subnet_pure_private1"
  }
}
resource "aws_subnet" "pure_private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_pure_private2_subnet
   availability_zone = var.AZ_1
  tags = {
    Name = "${var.company}_subnet_pure_private2"
  }
}