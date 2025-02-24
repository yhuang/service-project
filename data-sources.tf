data "tfe_outputs" "gcp_bootstrap" {
  organization = var.tfc_organization_name
  workspace    = var.tfc_workspace_name
}