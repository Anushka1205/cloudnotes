variable "project_name" {
  description = "Project name used across the full CloudNotes stack."
  type        = string
  default     = "cloudnotes"
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Deployment region for the environment."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.20.0.0/16"
}

variable "web_subnet_cidr" {
  description = "CIDR block for the web subnet."
  type        = string
  default     = "10.20.1.0/24"
}

variable "app_subnet_cidr" {
  description = "CIDR block for the app subnet."
  type        = string
  default     = "10.20.2.0/24"
}

variable "db_subnet_cidr" {
  description = "CIDR block for the database subnet."
  type        = string
  default     = "10.20.3.0/24"
}

variable "app_instance_type" {
  description = "Instance size for the CloudNotes app."
  type        = string
  default     = "t3.micro"
}

variable "db_instance_class" {
  description = "Database instance class for the CloudNotes database."
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Database name for the application."
  type        = string
  default     = "cloudnotes"
}

variable "bucket_name" {
  description = "Name of the object storage bucket used for CloudNotes assets."
  type        = string
  default     = "cloudnotes-assets-dev"
}

variable "service_account_name" {
  description = "Service account name used by the application."
  type        = string
  default     = "cloudnotes-sa"
}

variable "tags" {
  description = "Standard tags attached to resources."
  type        = map(string)
  default = {
    project     = "cloudnotes"
    environment = "dev"
    managed_by  = "terraform"
  }
}
