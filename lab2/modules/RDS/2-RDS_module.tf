
resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  availability_zone    = each.value
  for_each             = var.az_list
  skip_final_snapshot  = true
}

resource "aws_db_subnet_group" "RDS_group" {
  name       = "rdsgroup"
  subnet_ids = var.pure_private_ids

  tags = {
    Name = "${var.company}_DB_subnet_group"
  }
}


