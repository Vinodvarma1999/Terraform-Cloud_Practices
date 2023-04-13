resource "tfe_team" "test" {
  name         = "my-team-name"
  organization = "vinod0510"
  organization_access {
    manage_vcs_settings = true
  }
}
