resource "aws_instance" "web" {
  ami           = "ami-03af6a70ccd8cb578"
  instance_type = var.ec2_type
  subnet_id     = var.private1_id
  tags = {
    Name = "${var.company}_first_public1_ec2}"
  }
}
