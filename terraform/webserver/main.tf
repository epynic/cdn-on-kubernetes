module "webserver" {
    source = "../modules/droplet"

    instance_name     = var.instance_name
    instance_region   = var.instance_region
    instance_size     = var.instance_size
    user_data = file("user-data.web")
}