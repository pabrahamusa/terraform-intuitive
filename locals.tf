# Define Local Values in Terraform
locals {
  owners = var.project_team
  env = var.env
  name = "${var.project_team}-${var.env}"
  common_tags = {
    owners = local.owners
    env = local.env
  }
} 