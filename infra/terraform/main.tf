locals {
  name_prefix = "${var.project_name}-${var.environment}"
  acr_name    = substr(replace("${var.project_name}${var.environment}acr", "-", ""), 0, 24)
}

module "network" {
  source = "./modules/network"

  name_prefix      = local.name_prefix
  location         = var.location
  vnet_cidr        = var.vnet_cidr
  aks_subnet_cidr  = var.aks_subnet_cidr
  vm_subnet_cidr   = var.vm_subnet_cidr
  allowed_ssh_cidr = var.allowed_ssh_cidr
  mysql_port       = var.mysql_port
}

module "acr" {
  source = "./modules/acr"

  acr_name            = local.acr_name
  location            = var.location
  resource_group_name = module.network.resource_group_name
}

module "aks" {
  source = "./modules/aks"

  cluster_name        = "${local.name_prefix}-aks"
  location            = var.location
  resource_group_name = module.network.resource_group_name
  dns_prefix          = "${var.project_name}-${var.environment}-dns"
  subnet_id           = module.network.aks_subnet_id
  node_count          = var.aks_node_count
  vm_size             = var.aks_vm_size
}

module "linux_vm" {
  source = "./modules/linux_vm"

  vm_name                = "${local.name_prefix}-mysql-vm"
  location               = var.location
  resource_group_name    = module.network.resource_group_name
  subnet_id              = module.network.vm_subnet_id
  admin_username         = var.admin_username
  ssh_public_key         = var.ssh_public_key
  vm_size                = var.vm_size
  public_ip_name         = "${local.name_prefix}-mysql-pip"
  network_interface_name = "${local.name_prefix}-mysql-nic"
}


resource "azurerm_role_assignment" "aks_acr_pull" {
  scope                = module.acr.id
  role_definition_name = "AcrPull"
  principal_id         = module.aks.kubelet_identity_object_id

  depends_on = [
    module.aks,
    module.acr
  ]
}