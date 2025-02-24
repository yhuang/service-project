data "terraform_remote_state" "gcp_bootstrap" {
  backend = "remote"

  config = {
    organization = var.tfc_organization_name
    workspaces = {
      name = var.tfc_workspace_name
    }
  }
}