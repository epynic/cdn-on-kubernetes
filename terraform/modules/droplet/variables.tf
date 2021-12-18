# variable "do_token" {
#   default = ""
#   description = "DO API access token"
# }

variable "instance_name" {
  description = "Droplet name"
}

variable "instance_region" {
  description = "Droplet region"
}

variable "instance_size" {
  description = "Droplet size"
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

variable "ssh_private_key" {
  default = "./ssh/devkeypair.key"
  description = "Droplet SSH key local path"
}

variable "ssh_public_key" {
  default = "./ssh/devkeypair.pub"
  description = "Droplet SSH key local path"
}

variable "user_data" {
  description = "(Optional) A string of the desired User Data for the Droplet."
  default     = "exit 0"
}