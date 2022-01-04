module "s3_module" {
  source      = "./modules/s3/"
  bucket_name = "MOATAZTERRAFORMTEST"
  company     = "itit_lab3"

}