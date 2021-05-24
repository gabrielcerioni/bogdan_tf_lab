data "terraform_remote_state" "gke_cluster" {
  backend = "gcs"
  config = {
    bucket = "${var.project}-terraform"
    prefix = "gke_cluster"
  }
}

module "workload_identity" {
  source  = "terraform-google-modules/kubernetes-engine/google//modules/workload-identity"

  project_id = var.project
  name       = "wi-${var.service_name}"
  namespace  = data.terraform_remote_state.gke_cluster.outputs.k8s_namespace
  roles      = var.service_roles
}
