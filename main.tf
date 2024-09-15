
module "ssp_provision_bastion_host" {
  source = "https://github.com/rajeshr264/ssp_provision_bastion_host"
 
  bastion_host_password = var.bastion_host_password
  bastion_host_username = var.bastion_host_username
  bastion_host_public_key_filename = var.bastion_host_public_key_filename
  proxmox_bastion_host_name = var.proxmox_bastion_host_name
}