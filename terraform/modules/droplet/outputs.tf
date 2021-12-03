output "public_ip" {
  value = digitalocean_floating_ip.instance_floating_ip.ip_address
}
