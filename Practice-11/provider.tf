terraform {
  required_providers {
    github = {
      source = "hashicorp/github"
      version = "5.23.0"
    }
  }
}

provider "github" {
  token = var.hubtoken
}
