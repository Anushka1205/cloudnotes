resource "null_resource" "database" {
  triggers = {
    name              = "${var.project_name}-${var.environment}-db"
    region            = var.region
    instance_class    = var.db_instance_class
    db_name           = var.db_name
    subnet_id         = var.subnet_id
    security_group_id = var.security_group_id
    environment       = var.environment
  }
}
