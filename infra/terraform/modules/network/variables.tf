variable "name_prefix" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_cidr" {
  type = string
}

variable "aks_subnet_cidr" {
  type = string
}

variable "vm_subnet_cidr" {
  type = string
}

variable "allowed_ssh_cidr" {
  type = string
}

variable "mysql_port" {
  type = number
}