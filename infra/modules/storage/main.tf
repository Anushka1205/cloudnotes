resource "null_resource" "bucket" {
  triggers = {
    name        = var.bucket_name
    project     = var.project_name
    environment = var.environment
    type        = "object_storage"
  }
}
