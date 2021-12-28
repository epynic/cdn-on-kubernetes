variable "cluster_name" {
    description = "Cluster name"
}

variable "cluster_region" {
    description = "Cluster region"
}

variable "cluster_version" {
    default = "1.21.5-do.0"
    description = "Cluster version"
}

variable "node_count" {
    description = "Node count"
}

variable "project_name" {
  default = "kube-cdn"
  description = "DO Project Name"
}

variable "project_description" {
  default = "A project to represent development resources."
  description = "DO Project Description"
}

variable "project_purpose" {
  default = "Yet another cdn"
  description = "DO Project Purpose"
}

variable "project_environment" {
  default = "Development"
  description = "DO Project ENV"
}


variable "module_name" {
  default = "config"
  description = "DO Project Name"
}
