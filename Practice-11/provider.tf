terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "ot-hKrei3yCV3QtTU9U"
  owner = "Vinodvarma1999"
}
