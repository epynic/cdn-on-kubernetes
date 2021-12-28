module "kube_project" {
  source = "../modules/project"
  project_name = var.project_name
}

module "kube-web" {
  source = "../modules/k8s" 

  module_name= "kube-web"
  cluster_name   = var.cluster_name
  cluster_region = var.cluster_region
  node_count     = 1

  project_name = var.project_name
  depends_on = [module.kube_project]
}