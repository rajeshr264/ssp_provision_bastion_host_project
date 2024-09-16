
module "ssp_provision_bastion_host" {
  #source = "github.com/rajeshr264/ssp_provision_bastion_host"
  
  source = "./work_modules/ssp_provision_bastion_host"

  bastion_host_password = var.bastion_host_password
  bastion_host_username = var.bastion_host_username
  bastion_host_public_key_filename = var.bastion_host_public_key_filename

  proxmox_host_endpoint = var.proxmox_host_endpoint
  proxmox_host_username = var.proxmox_host_username
  proxmox_host_password = var.proxmox_host_password
  proxmox_machine_image_template_id = var.proxmox_machine_image_template_id
  proxmox_node_name = var.proxmox_node_name
  proxmox_network_bridge_name = var.proxmox_network_bridge_name
}  
