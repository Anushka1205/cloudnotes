resource "null_resource" "service_account" {
  triggers = {
    name        = "${var.project_name}-${var.environment}-${var.service_account_name}"
    project     = var.project_name
    environment = var.environment
    type        = "service_account"
  }
}

resource "null_resource" "role_binding" {
  triggers = {
    service_account = null_resource.service_account.id
    role           = "roles/storage.objectViewer"
    scope          = "project"
  }
}
