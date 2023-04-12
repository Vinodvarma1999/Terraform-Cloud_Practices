resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  tag_names    = ["test", "app"]
  vcs_repo {
#     oauth_token {
#       id = var.oauthgithubtoken
#     }
    oauth_token_id = var.oauthgithubtoken
    identifier = "https://github.com/Vinodvarma1999/Terraform-Cloud_Practices.git"
    branch     = "main"
  }
  working_directory = "./Practice-6"
  auto_apply        = true
  queue_all_runs    = true
}

resource "tfe_variable" "my-var" {
  key          = "username"
  value        = var.db_username
  sensitive    = true
  category     = "terraform"
  workspace_id = tfe_workspace.test.id
  description  = "a useful description"
}
