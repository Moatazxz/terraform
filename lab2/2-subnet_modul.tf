module "subnet" {
  source = "./modules/subnets/"
  vpc_id = module.vpc.vpc_id
  cidr_public1_subnet_block = "10.0.1.0/24"
  cidr_private1_subnet_block = "10.0.2.0/24"
  cidr_pure_private1_subnet_block = "10.0.3.0/24"
  cidr_pure_private2_subnet_block = "10.0.4.0/24"
  az1="us-west-1a"
  az2="us-west-1c"
  company = "iti_lab2"
}


