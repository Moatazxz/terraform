module "ec2" {

  source      = "./modules/ec2/"
  company     = "iti_lab2"
  ec2_type    = "t2.micro"
  private1_id = module.subnet.private1_id


}