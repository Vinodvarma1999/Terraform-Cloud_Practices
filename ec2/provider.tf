terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}

provider "aws" {
  aws_region          = var.aws_region
  aws_access_key      = var.aws_access_key
  aws_secret_key      = var.aws_secret_key
}
