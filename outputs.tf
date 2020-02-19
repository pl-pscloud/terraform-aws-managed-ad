output "pscloud_ad" {
  value = aws_directory_service_directory.pscloud-ad
}

output "pscloud_ad_password" {
  value = random_password.pscloud-password-for-ad.result
}