variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  default     = "rg-eus-mscafe-terraform"
}

variable "location" {
  description = "The location where the resources will be created"
  default     = "eastus"
}

variable "vm_size" {
  default     = "Standard_A0"
  description = "Size of the Virtual Machine based on Azure sizing"
}

variable "vmscaleset_name" {
  default     = "vmss-eus-web"
  description = "The name of the VM scale set that will be created in Azure"
}

variable "computer_name_prefix" {
  default     = "vmss"
  description = "The prefix that will be used for the hostname of the instances part of the VM scale set"
}

variable "managed_disk_type" {
  default     = "Standard_LRS"
  description = "Type of managed disk for the VMs that will be part of this compute group. Allowable values are 'Standard_LRS' or 'Premium_LRS'."
}

variable "data_disk_size" {
  description = "Specify the size in GB of the data disk"
  default     = "10"
}

variable "admin_username" {
  description = "The admin username of the VMSS that will be deployed"
  default     = "mscafe"
}

#variable "admin_password" {
#  description = "The admin password to be used on the VMSS that will be deployed. The password must meet the complexity requirements of Azure"
#  default     = ""
#}

variable "ssh_key" {
  description = "Path to the public key to be used for ssh access to the VM"
  default     = "~/.ssh/id_rsa.pub"

}

variable "nb_instance" {
  description = "Specify the number of vm instances"
  default     = "1"
}

variable "vnet_subnet_id" {
  description = "The subnet id of the virtual network on which the vm scale set will be connected"
  default     = "/subscriptions/8b4408ad-500e-49e3-a5f3-231f895d8325/resourceGroups/rg-eus-mscafe-terraform/providers/Microsoft.Network/virtualNetworks/vnet-eus-terraform/subnets/sn-eus-internal"

}

variable "network_profile" {
  description = "The name of the network profile that will be used in the VM scale set"
  default     = "terraformnetworkprofile"

}

variable "vm_os_simple" {
  description = "Specify Ubuntu or Windows to get the latest version of each os"
  default     = "UbuntuServer"
}

variable "vm_os_publisher" {
  description = "The name of the publisher of the image that you want to deploy"
  default     = ""
}

variable "vm_os_offer" {
  description = "The name of the offer of the image that you want to deploy"
  default     = ""
}

variable "vm_os_sku" {
  description = "The sku of the image that you want to deploy"
  default     = ""
}

variable "vm_os_version" {
  description = "The version of the image that you want to deploy."
  default     = "latest"
}

variable "vm_os_id" {
  description = "The ID of the image that you want to deploy if you are using a custom image."
  default     = ""
}

variable "load_balancer_backend_address_pool_ids" {
  description = "The id of the backend address pools of the loadbalancer to which the VM scale set is attached"
  default     = "/subscriptions/8b4408ad-500e-49e3-a5f3-231f895d8325/resourceGroups/rg-eus-mscafe-terraform/providers/Microsoft.Network/loadBalancers/elb-eus-web/backendAddressPools/BackEndAddressPool"

}

variable "tags" {
  type        = "map"
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    source = "terraform"
  }
}

variable "cloudconfig_file" {
  description = "The location of the cloud init configuration file."
  default     = "cloudconfig.tpl"

}
