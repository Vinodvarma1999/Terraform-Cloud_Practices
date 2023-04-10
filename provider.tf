terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "2.34.0"
    }
  }
}
provider "aws" {
  region     = data.terraform_remote_state.variables.outputs.aws_region
  access_key = data.terraform_remote_state.variables.outputs.aws_access_key
  secret_key = data.terraform_remote_state.variables.outputs.aws_secret_key
}
