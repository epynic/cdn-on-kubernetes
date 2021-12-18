# IaC - Infrastructure as Code 
This folder contains [Terraform](https://www.terraform.io/) configuration that define a module for deploying the droplets

### Setup
- Use `ssh-keygen -t rsa` to create the keypair in the ssh directory
- token - (Required) This is the DO API token. This has to be specified using environment variables: `DIGITALOCEAN_TOKEN = do_token`