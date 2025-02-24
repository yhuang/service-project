locals {
  gcp_billing_account_id         = data.tfe_outputs.gcp_bootstrap.values.gcp_billing_account_id
  gcp_org_id                     = data.tfe_outputs.gcp_bootstrap.values.gcp_org_id
  gcp_folder_id                  = data.tfe_outputs.gcp_bootstrap.values.gcp_folder_id
  terraform_admin_gcp_project_id = data.tfe_outputs.gcp_bootstrap.values.terraform_admin_gcp_project_id

  shared_host_vpc_project_id = data.tfe_outputs.host_vpc_project.values.project_id
  service_project_id         = module.service_project.project_id
}