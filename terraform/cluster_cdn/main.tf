module "kube_project" {
  source = "../modules/project"
  project_name = var.project_name
}

# Bangalore, India
module "kube_cluster_blr" {
  source = "../modules/k8s"

  module_name= "kube_cluster_blr"
  cluster_name   = "cdn-cluster-blr1"
  cluster_region = "blr1"
  node_count     = 1

  project_name = var.project_name
  depends_on = [module.kube_project]

}

# Amsterdam, the Netherlands	
module "kube_cluster_ams" {
  source = "../modules/k8s"

  module_name= "kube_cluster_ams"
  cluster_name   = "cdn-cluster-ams2"
  cluster_region = "ams3"
  node_count     = 1

  project_name = var.project_name
  depends_on = [module.kube_project]
}

# New York City, United States
module "kube_cluster_nyc" {
  source = "../modules/k8s"

  module_name= "kube_cluster_nyc"
  cluster_name   = "cdn-cluster-nyc3"
  cluster_region = "nyc3"
  node_count     = 1

  project_name = var.project_name
  depends_on = [module.kube_project]
}