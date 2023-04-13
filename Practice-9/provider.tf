terraform {
  required_providers {
    github = {
      source = "integrations/terraform-provider-github"
      version = "5.22.0"
    }
  }
}

provider "github" {
  token = var.token 
}
