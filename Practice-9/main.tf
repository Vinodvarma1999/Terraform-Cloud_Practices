resource "github_repository" "example" {
  name        = "practice"
  description = "My awesome codebase"
  visibility  = "public"
  private     = false
  has_downloads = false
  auto_init   = true
}
