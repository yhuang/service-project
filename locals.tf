locals {
  gcp_billing_account_id         = data.terraform_remote_state.gcp_bootstrap.gcp_billing_account_id
  gcp_folder_id                  = data.terraform_remote_state.gcp_bootstrap.gcp_folder_id
  terraform_admin_gcp_project_id = data.terraform_remote_state.gcp_bootstrap.terraform_admin_gcp_project_id
}