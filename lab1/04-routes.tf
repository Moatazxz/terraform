###internet gitway
resource "aws_internet_gateway" "main_internet_gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.company}_internet_gw"
  }
}

###pure private route table
resource "aws_route_table" "pure_private_rt" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.company}_private_rt"
  }
}

###public route table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_internet_gw.id
  }
  tags = {
    Name = "${var.company}_public_rt"
  }
}

###public subnet  association 
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public_rt.id
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.public_rt.id
}

###pure private subnet  association 
resource "aws_route_table_association" "pure_private1" {
  subnet_id      = aws_subnet.pure_private1.id
  route_table_id = aws_route_table.pure_private_rt.id
}
resource "aws_route_table_association" "pure_private2" {
  subnet_id      = aws_subnet.pure_private2.id
  route_table_id = aws_route_table.pure_private_rt.id
}

### elastic ip 
resource "aws_eip" "main" {
  vpc      = true
}

### NAT gitway
resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.public1.id

  tags = {
    Name = "${var.company}_gw_nat1"
  }
  depends_on = [aws_internet_gateway.main_internet_gw]
}

###private NAT route table
resource "aws_route_table" "private_rt_NAT" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat1.id
  }
  tags = {
    Name = "${var.company}_private_rt_NAT"
  }
}

### private subnet with nat   association 

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private_rt_NAT.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private_rt_NAT.id
}













