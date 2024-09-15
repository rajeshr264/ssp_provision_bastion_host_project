terraform {
  required_version = ">= 1.9.5"

  required_providers {
  
    proxmox = {
      source = "bpg/proxmox"
      version = ">= 0.64.0"
    }
  }
}