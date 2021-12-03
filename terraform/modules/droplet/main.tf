
terraform {
  required_version = ">= 1.0.5, < 1.0.12"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {}

resource "digitalocean_droplet" "instance" {
  image    = "ubuntu-21-04-x64"
  name     = var.instance_name
  region   = var.instance_region
  size     = var.instance_size
  ssh_keys = [digitalocean_ssh_key.instance_keypair.fingerprint]
}

resource "digitalocean_ssh_key" "instance_keypair" {
  name       = "Public key"
  public_key = file(var.ssh_public_key)
}

resource "digitalocean_floating_ip" "instance_floating_ip" {
  droplet_id = digitalocean_droplet.instance.id
  region     = digitalocean_droplet.instance.region
}

resource "digitalocean_project" "project" {
  name        = var.project_name
  description = var.project_description
  purpose     = var.project_purpose
  environment = var.project_environment
  resources   = [digitalocean_droplet.instance.urn]
}
