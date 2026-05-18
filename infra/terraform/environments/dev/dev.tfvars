subscription_id = "95309a5d-dbd2-4de8-869f-b6ae44b8bdd0"

project_name = "petclinic"
environment  = "dev"
location     = "eastus"

vnet_cidr       = "10.10.0.0/16"
aks_subnet_cidr = "10.10.1.0/24"
vm_subnet_cidr  = "10.10.2.0/24"

aks_node_count = 2
aks_vm_size    = "Standard_B2s"
vm_size        = "Standard_B2s"

admin_username   = "azureuser"
ssh_public_key   = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJJyVVpnLnVaB8Vpv5Bolwbs7WizESTx8mmEkQoPle+GtEo88ukhhzA9HHDmkFgAqgRps14RzBFvLBiwdSg1y4eWvyV1pFDe+AkQoJ5nzLNS33wjEFUOXedC3ueKNevACp7uRbyHmCGgMgHe2g7EL/Fgxgf9ha81LdKTq2CyRD6Dteo9zyy3GnaI1UQeM3LjDgAN7BFXD4vos6ESGQdfW321MmIFhkCClmun1msfHa91DonZiGov+lg89PpIBw6GZYQzez6DRcfNe6Ff5a8qDBxcdI7Ak5SYvjdzwUPgheTlWepKGrgv5qFuxD3Qt8y3L9ucCzNj2ekI5zpsiakZ75"
allowed_ssh_cidr = "0.0.0.0/0"
mysql_port       = 3306
