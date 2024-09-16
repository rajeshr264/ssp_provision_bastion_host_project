output "bastion_ipv4" {
  value = module.ssp_provision_bastion_host.dhcp_ip
}
