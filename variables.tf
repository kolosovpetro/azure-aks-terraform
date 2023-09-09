variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "resource_group_location" {
  type        = string
  description = "Resource group location"
}

variable "prefix" {
  type        = string
  description = "Prefix for all resources"
}

variable "cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "system_node_count" {
  type        = number
  description = "Number of system nodes"
}

variable "acr_name" {
  type        = string
  description = "Name of the ACR"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}
