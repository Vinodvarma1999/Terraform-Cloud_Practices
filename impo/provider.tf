terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}
provider "aws" {
  region          = "us-east-1" 
  access_key      = ""
  secret_key      = ""
}
