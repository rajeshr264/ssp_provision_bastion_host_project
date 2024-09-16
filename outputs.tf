output "bastion_ipv4" {
  value = module.ssp_provision_bastion_host.dhcp_ip
}

# Generate Puppet Bolt inventory.yaml file
resource "local_file" "bolt_bastion_inventory" {
  filename = "./bastion_inventory.yaml"

  content = templatefile("./inventory.tpl", {
    instances = [module.ssp_provision_bastion_host.dhcp_ip],
    ssh_private_key_filename = var.bastion_host_private_key_filename,
    ssh_username = var.bastion_host_username
  })
}