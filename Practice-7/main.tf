resource "tfe_organization" "vinod05-Test" {
  name  = "my-org-name"
  email = "xyz@gmail.com"
}

resource "tfe_workspace" "UAT-Test" {
  name         = "my-workspace-name"
  organization = tfe_organization.vinod05-Test.name
}

resource "tfe_variable_set" "UAT-Test" {
  name          = "Test-variable-test"
  description   = "Some-description."
  organization  = tfe_organization.vinod05-Test.name
}

resource "tfe_workspace_variable_set" "test" {
  variable_set_id = tfe_variable_set.UAT-Test.id
  workspace_id    = tfe_workspace.UAT-Test.id
}
