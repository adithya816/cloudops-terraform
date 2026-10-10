terraform {
  required_version = ">= 1.0"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "CloudOps"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "development"
}

resource "terraform_data" "project" {
  input = {
    project     = var.project_name
    environment = var.environment
    owner       = "admin"
  }
}

output "project_name" {
  value = terraform_data.project.output.project
}

output "environment" {
  value = terraform_data.project.output.environment
}

variable "project_version" {
  description = "Version of the CloudOps project"
  type        = string
  default     = "1.0.0"
}

output "project_version" {
  value = var.project_version
}
