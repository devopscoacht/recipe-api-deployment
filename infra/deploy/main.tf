terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.86.1"
    }
  }

  backend "s3" {
    bucket               = "cornel-terra-tf-state"
    key                  = "tf-state-deplo"
    workspace_key_prefix = "tf-state_deploy-env"
    region               = "us-east-1"
    encrypt              = true
    dynamodb_table       = "cornel-terra-tf-lock"
  }

}


provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManagedBy   = "Terraform/deploy"
    }
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}

data "aws_region" "current" {}

