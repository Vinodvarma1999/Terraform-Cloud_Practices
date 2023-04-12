# To create a workspace in organization
resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  tag_names    = ["test", "app"]
  auto_apply        = true
  queue_all_runs    = true
}

# To create a variable in workspace
resource "tfe_variable" "my-var" {
  key          = "username"
  value        = var.db_username
  sensitive    = true
  category     = "terraform"
  workspace_id = tfe_workspace.test.id
  description  = "a useful description"
}
