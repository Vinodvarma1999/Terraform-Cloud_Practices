terraform {
  required_providers {
    github = {
      source = "hashicorp/github"
      version = "4.14.0"
    }
  }
}

provider "github" {
  token = var.hubtoken
}
