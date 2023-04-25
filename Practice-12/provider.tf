terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = " " # PersonalAccessToken-OR-OAuth-Token
  owner = "Vinodvarma1999"
}
