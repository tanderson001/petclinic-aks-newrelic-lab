output "resource_group_name" {
  value = module.network.resource_group_name
}

output "aks_cluster_name" {
  value = module.aks.cluster_name
}

output "acr_name" {
  value = module.acr.name
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "mysql_vm_public_ip" {
  value = module.linux_vm.public_ip_address
}

output "mysql_vm_private_ip" {
  value = module.linux_vm.private_ip_address
}

output "mysql_host" {
  value = module.linux_vm.private_ip_address
}