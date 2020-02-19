resource "random_password" "pscloud-password-for-ad" {
  length = 16
  special = true
  override_special = "_%@"
}

resource "aws_directory_service_directory" "pscloud-ad" {
  name     = var.pscloud_ad_name
  password = random_password.pscloud-password-for-ad.result
  edition  = var.pscloud_edition
  type     = var.pscloud_type


  vpc_settings {
    vpc_id     = var.pscloud_vpc_id
    subnet_ids = var.pscloud_subnets_ids
  }

  tags = {
    Name    = "${var.pscloud_company}-rds-instance-${var.pscloud_env}"
    Project = var.pscloud_project
  }
}