variable "engine" {}
variable "company" {}
variable "engine_version" {}
variable "allocated_storage" {
     type = number
}
variable "instance_class" {}
variable "name" {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}
variable "pure_private_ids" {
   
 type = set(string)

}
variable "az_list" {
     type = set(string)
}






