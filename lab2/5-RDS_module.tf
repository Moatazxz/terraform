module "RDS" {
source = "./modules/RDS/"
allocated_storage= 10
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t3.micro"
name = "mydb"
username = "foo"
password = "moatazmohamed"
parameter_group_name = "default.mysql5.7"
pure_private_ids = [module.subnet.pure_private1_id , module.subnet.pure_private2_id ]
az_list = ["us-west-1a","us-west-1c"]
company="iti_lab2"
    
}


  
