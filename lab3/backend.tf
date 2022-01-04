terraform {
  backend "s3" {
    bucket  = "moatazbackend"
    key     = "moterraformbackend/terraform.tfstate"
    region  = "us-west-1"
    encrypt = true
  }
}