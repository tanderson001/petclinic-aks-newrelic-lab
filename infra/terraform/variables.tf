variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "project_name" {
  description = "Short project prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_cidr" {
  description = "CIDR block for the VNet"
  type        = string
}

variable "aks_subnet_cidr" {
  description = "CIDR block for the AKS subnet"
  type        = string
}

variable "vm_subnet_cidr" {
  description = "CIDR block for the VM subnet"
  type        = string
}

variable "aks_node_count" {
  description = "AKS node count"
  type        = number
}

variable "aks_vm_size" {
  description = "AKS node VM size"
  type        = string
}

variable "vm_size" {
  description = "MySQL VM size"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the Linux VM"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key for the Linux VM"
  type        = string
  sensitive   = true
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH to the VM"
  type        = string
}

variable "mysql_port" {
  description = "MySQL port"
  type        = number
  default     = 3306
}