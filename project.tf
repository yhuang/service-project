module "service_project" {
  source  = "terraform-google-modules/project-factory/google"

  name                 = "service"
  random_project_id    = true
  folder_id            = local.gcp_folder_id
  billing_account      = local.gcp_billing_account_id
  
  svpc_host_project_id = data.tfe_outputs.host_vpc_project.values.project_id
}