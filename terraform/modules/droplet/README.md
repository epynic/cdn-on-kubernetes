# 👉 Terraform - Provision Droplet with SSH access

This will help us provision a digital ocean droplet with ssh access, we will use this droplet for all our development purpose.

###  Getting Started

## Generate SSH Key Pair

We have a folder ssh in the root of the project where we would create the ssh-key pairs.

Use the `ssh-keygen` command to create the keypair

``` 
~ ssh-keygen -t rsa
~ Enter passphrase (empty for no passphrase): devkeypair
````

## Create a Digital Ocean (DO) Personal Access Token
Follow this tutorial
https://docs.digitalocean.com/reference/api/create-personal-access-token/


## Update the tfvars

file: vars.tfvars
```
do_token        = "personal-access-token"
instance_name   = "module-instance"
instance_region = "blr1"
instance_size   = "s-1vcpu-1gb"

project_name        = "kube-cdn"
project_description = "A project to represent development resources."
project_purpose     = "Yet another cdn"
project_environment = "Development"

ssh_private_key = "./ssh/devkeypair.key"
ssh_public_key  = "./ssh/devkeypair.pub"
```

 
#### DO Distribution image slug
https://do-community.github.io/available-images/

#### Do region slug 
https://docs.digitalocean.com/products/platform/availability-matrix/

Update the droplet image in the main.tf

```
resource "digitalocean_droplet" "instance" {
  image    = "ubuntu-21-04-x64"
```


## terraform apply
```
terraform init
terraform apply -var-file=vars.tfvars
```