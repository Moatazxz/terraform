### public subnet to create NAt in this subnet
resource "aws_subnet" "public1" {
  count      = length(var.subnet_ids)
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_ids[count.index]

  tags = {
    Name = "${var.company}_public1_subnet}"
  }
}

