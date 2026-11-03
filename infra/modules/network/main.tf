resource "null_resource" "vpc" {
  triggers = {
    project_name = var.project_name
    environment  = var.environment
    region       = var.region
    cidr         = var.vpc_cidr
  }
}

resource "null_resource" "web_subnet" {
  triggers = {
    vpc_cidr = var.vpc_cidr
    subnet   = var.web_subnet_cidr
    region   = var.region
    name     = "${var.project_name}-${var.environment}-web"
  }
}

resource "null_resource" "app_subnet" {
  triggers = {
    vpc_cidr = var.vpc_cidr
    subnet   = var.app_subnet_cidr
    region   = var.region
    name     = "${var.project_name}-${var.environment}-app"
  }
}

resource "null_resource" "db_subnet" {
  triggers = {
    vpc_cidr = var.vpc_cidr
    subnet   = var.db_subnet_cidr
    region   = var.region
    name     = "${var.project_name}-${var.environment}-db"
  }
}

resource "null_resource" "security_group" {
  triggers = {
    name        = "${var.project_name}-${var.environment}-sg"
    web_subnet  = var.web_subnet_cidr
    app_subnet  = var.app_subnet_cidr
    db_subnet   = var.db_subnet_cidr
    environment = var.environment
  }
}
