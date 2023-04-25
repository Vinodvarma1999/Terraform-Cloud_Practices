resource "github_repository" "example" {
  name               = "example"
  description        = "My awesome codebase"
  auto_init          = true   # to initialize the repository with a README file
  allow_merge_commit = false  # to disallow merge commits.
  visibility         = "public"  # means resource is visible to all members of the organization or workspace that the resource belongs to, but not to external users or anonymous users.
  }
