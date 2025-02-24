data "tfe_outputs" "gcp_bootstrap" {
  organization = var.tfc_organization_name
  workspace    = var.tfc_bootstrap_workspace_name
}

data "tfe_outputs" "host_vpc_project" {
  organization = var.tfc_organization_name
  workspace    = var.tfc_host_vpc_project_workspace_name
}