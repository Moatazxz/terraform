module "subnet" {
  source     = "./modules/subnets/"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

  company = "iti_lab2"
}


