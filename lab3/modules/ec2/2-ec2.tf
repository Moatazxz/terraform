resource "aws_instance" "web" {
  count = var.condtion ? 0 : 1

  ami           = "ami-03af6a70ccd8cb578"
  instance_type = var.ec2_type
  subnet_id     = var.public1_id
  tags = {
    Name = "${var.company}_first_public1_ec2}"
  }
}
