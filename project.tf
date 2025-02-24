# module "service_project" {
#   source  = "terraform-google-modules/project-factory/google"

#   name                 = "service"
#   random_project_id    = true
#   folder_id            = local.gcp_folder_id
#   billing_account      = local.gcp_billing_account_id

#   deletion_policy = "DELETE"
# }

module "service_project" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"

  name              = "service"
  random_project_id = false

  org_id          = local.gcp_org_id
  folder_id       = local.gcp_folder_id
  billing_account = local.gcp_billing_account_id

  shared_vpc         = local.shared_host_vpc_project_id
  shared_vpc_subnets = data.google_compute_network.shared_host_vpc.subnetworks_self_links

  disable_services_on_destroy = false
  deletion_policy             = "DELETE"
}