output "app_sa_email" {
  value = null_resource.service_account.id
}

output "app_sa_name" {
  value = var.service_account_name
}
