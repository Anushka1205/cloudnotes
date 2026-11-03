output "database_id" {
  value = null_resource.database.id
}

output "database_name" {
  value = var.db_name
}
