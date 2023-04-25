terraform {
  required_providers {
    github = {
      source = "hashicorp/github"
      version = "5.23.0"
    }
  }
}

provider "github" {
  version      = "2.8.0"
  token = var.github_token
}
