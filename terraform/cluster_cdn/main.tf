module "kube-cluster" {
  source = "../modules/k8s"

  cluster_name   = var.cluster_name
  cluster_region = var.cluster_region
  node_count     = 1
  project_name = var.project_name
}