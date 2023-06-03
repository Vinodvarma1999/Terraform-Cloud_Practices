terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}

provider "aws" {
  aws_region      = "us-east-1" 
  access_key      = "AKIA5TO7FP6W3U6CG43V"
  secret_key      = "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"
}
