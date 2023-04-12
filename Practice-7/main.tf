resource "tfe_organization" "test" {
  name  = "my-org-name"
  email = "xyz@gmail.com"
}

resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  organization = tfe_organization.test.name
}

resource "tfe_variable_set" "test" {
  name          = "Test-variable-test"
  description   = "Some-description."
  organization  = tfe_organization.test.name
}

resource "tfe_workspace_variable_set" "test" {
  variable_set_id = tfe_variable_set.test.id
  workspace_id    = tfe_workspace.test.id
}
