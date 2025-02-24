locals {
  gcp_billing_account_id         = data.tfe_outputs.gcp_bootstrap.values.gcp_billing_account_id
  gcp_folder_id                  = data.tfe_outputs.gcp_bootstrap.values.gcp_folder_id
  terraform_admin_gcp_project_id = data.tfe_outputs.gcp_bootstrap.values.terraform_admin_gcp_project_id
}