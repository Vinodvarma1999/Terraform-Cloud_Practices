resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  tag_names    = ["test", "app"]
}
