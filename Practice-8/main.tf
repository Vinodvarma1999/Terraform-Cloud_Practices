resource "tfe_team" "my-team" {
  name         = "myteam"
  organization = "vinod0510"
  organization_access {
    manage_vcs_settings = true
  }
}
