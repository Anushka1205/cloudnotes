resource "null_resource" "app_instance" {
  triggers = {
    name                   = "${var.project_name}-${var.environment}-app"
    region                 = var.region
    instance_type          = var.instance_type
    subnet_id              = var.subnet_id
    security_group_id      = var.security_group_id
    service_account_email  = var.service_account_email
    app_port              = "80"
    environment           = var.environment
  }
}
