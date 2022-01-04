### public subnet to create NAt in this subnet
resource "aws_subnet" "public1" {
  vpc_id     = var.vpc_id
  cidr_block = "${var.cidr_public1_subnet_block}"

  tags = {
    Name = "${var.company}_public1_subnet}"
  }
}

### private  subnet to create ec2 in this 
resource "aws_subnet" "private1" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_private1_subnet_block

  tags = {
    Name = "${var.company}_private1_subnet}"
  }
}
resource "aws_subnet" "pure_private1" {
  vpc_id     = var.vpc_id
  cidr_block = "${var.cidr_pure_private1_subnet_block}"
  availability_zone = var.az1
  tags = {
    Name = "${var.company}_pure_private1_subnet}"
  }
}
resource "aws_subnet" "pure_private2" {
  vpc_id     = var.vpc_id
  cidr_block = "${var.cidr_pure_private2_subnet_block}"
  availability_zone = var.az2

  tags = {
    Name = "${var.company}_pure_private1_subnet}"
  }
}