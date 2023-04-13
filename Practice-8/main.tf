resource "tfe_team" "my-team" {
  name         = "myteam"
  organization = "vinod0510"
  organization_access {
    manage_vcs_settings = true
  }
}

# Associate a team to permissions on a workspace

resource "tfe_team_access" "test" {
  access       = "read"             # It can be admin, read, plan, or write
  team_id      = tfe_team.my-team.id
  workspace_id = # Define the workspace 
}

# Add or remove a user from a team

resource "tfe_team_member" "test" {
  team_id  = tfe_team.test.id
  username = "sander"
}

# # Add Multiple User 

# locals {
#   all_usernames = toset([
#     "user1",
#     "user2",
#   ])
# }

# resource "tfe_team_members" "test" {
#   team_id   = tfe_team.my-team.id
#   usernames = [for user in local.all_usernames : user]  
# }

# Generates a new team token and overrides existing token if one exists.

resource "tfe_team_token" "test" {
  team_id = tfe_team.my-team.id
}


  

  
  

