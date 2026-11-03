module "network" {
  source = "./modules/network"

  project_name    = var.project_name
  environment     = var.environment
  region          = var.region
  vpc_cidr        = var.vpc_cidr
  web_subnet_cidr = var.web_subnet_cidr
  app_subnet_cidr = var.app_subnet_cidr
  db_subnet_cidr  = var.db_subnet_cidr
  tags            = var.tags
}

module "iam" {
  source = "./modules/iam"

  project_name        = var.project_name
  environment         = var.environment
  service_account_name = var.service_account_name
  tags                = var.tags
}

module "compute" {
  source = "./modules/compute"

  project_name       = var.project_name
  environment        = var.environment
  region             = var.region
  instance_type     = var.app_instance_type
  subnet_id         = module.network.app_subnet_id
  security_group_id = module.network.security_group_id
  service_account_email = module.iam.app_sa_email
  tags              = var.tags
}

module "database" {
  source = "./modules/database"

  project_name      = var.project_name
  environment       = var.environment
  region            = var.region
  db_instance_class = var.db_instance_class
  db_name           = var.db_name
  subnet_id         = module.network.db_subnet_id
  security_group_id = module.network.security_group_id
  tags              = var.tags
}

module "storage" {
  source = "./modules/storage"

  project_name = var.project_name
  environment  = var.environment
  bucket_name  = var.bucket_name
  tags         = var.tags
}
