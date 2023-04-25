terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "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"
  organization = "terraform-practices"
  owner = "Vinodvarma1999"
}
