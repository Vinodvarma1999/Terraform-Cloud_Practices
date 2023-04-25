resource "github_organization" "example_org" {
  login         = "vinod"
  admin_username = "vinod0510"
  billing_email = "example@example.com"
  profile_name  = "Example-Organization"
  description   = "This is an example organization created using Terraform"
  email         = "example@example.com"
  members_can_create_repositories = true
}

resource "github_repository" "example" {
  name               = "example"
  description        = "My awesome codebase"
  auto_init          = true   # to initialize the repository with a README file
  allow_merge_commit = false  # to disallow merge commits.
  visibility         = "private"  # means resource is visible to all members of the organization or workspace that the resource belongs to, but not to external users or anonymous users.
}
