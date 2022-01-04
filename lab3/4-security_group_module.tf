module "secuirty_group" {
  source  = "./modules/secuirty_group/"
  company = "iti_lab2"
  vpc_id  = module.vpc.vpc_id

}