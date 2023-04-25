terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = "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"
}
