resource "aws_s3_bucket" "bucket" {
  bucket = lower(var.bucket_name)
  acl    = "private"

  tags = {
    Name = "${var.company}_${var.bucket_name}"
  }
}