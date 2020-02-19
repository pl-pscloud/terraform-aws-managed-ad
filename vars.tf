variable "pscloud_env" {}
variable "pscloud_company" {}
variable "pscloud_project" {}

variable "pscloud_ad_name" {}
variable "pscloud_vpc_id" {}
variable "pscloud_subnets_ids" {}

#for MS AD
variable "pscloud_edition" { default = ""}
variable "pscloud_type" { default = "" }

#for Simple AD
variable "pscloud_simple_ad_size" { default = 0}