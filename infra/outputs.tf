output "vpc_id" {
  description = "The VPC identifier for the CloudNotes environment."
  value       = module.network.vpc_id
}

output "app_subnet_id" {
  description = "The subnet where the app instance is placed."
  value       = module.network.app_subnet_id
}

output "db_subnet_id" {
  description = "The subnet where the managed database is placed."
  value       = module.network.db_subnet_id
}

output "app_public_ip" {
  description = "The app instance reference."
  value       = module.compute.public_ip
}

output "database_name" {
  description = "The database name used by the application."
  value       = module.database.database_name
}

output "bucket_name" {
  description = "The bucket created for Storage assets."
  value       = module.storage.bucket_name
}

output "service_account_email" {
  description = "The service account email created for application access."
  value       = module.iam.app_sa_email
}
