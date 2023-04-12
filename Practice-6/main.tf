resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  tag_names    = ["test", "app"]
  vcs_repo {
    identifier = "https://github.com/Vinodvarma1999/Terraform-Cloud_Practices.git"
    branch     = "main"
  }
  working_directory = "./Practice-6"
  auto_apply        = true
  vcs_trigger {
    identifier = "https://github.com/Vinodvarma1999/Terraform-Cloud_Practices.git"
    branch     = "main"
  }
}

resource "tfe_workspace_variable" "my-var" {
  key          = "username"
  value        = var.db_username
  sensitive    = true
  workspace_id = tfe_workspace.test.id
}
