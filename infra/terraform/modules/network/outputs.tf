output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "aks_subnet_id" {
  value = azurerm_subnet.aks.id
}

output "vm_subnet_id" {
  value = azurerm_subnet.vm.id
}