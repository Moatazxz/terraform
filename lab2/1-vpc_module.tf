module "vpc" {
  source         = "./modules/vpc/"
  company        = "iti_lab2"
  cidr_block_vpc = "10.0.0.0/16"

}