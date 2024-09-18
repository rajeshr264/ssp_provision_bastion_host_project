# Self-service Platform (SSP) 

# Usage:
On your workstation/laptop
* Install [Terraform](https://developer.hashicorp.com/terraform/install). On Windows, you can install in the native terminal or my favorite, install Terraform on WSL/Ubuntu.
* Install [Puppet Bolt](https://www.puppet.com/docs/bolt/latest/bolt_installing.html) 
* Create a work directory, like *$HOME/bastion_host_work_dir*
* clone this project
* Create a *terraform.tfvars* file with the parameter values.
* Run _terraform init_. Then run _terraform plan_ then run _terraform apply -auto-approve_.
* After you are done with the bastion host, run _terraform destroy -auto-approve_ to destroy it.

   
