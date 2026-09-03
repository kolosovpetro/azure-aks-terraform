output "principal_id" {
  value = azurerm_kubernetes_cluster.this.identity[0].principal_id
}

output "name" {
  value = azurerm_kubernetes_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_kubernetes_cluster.this.resource_group_name
}

output "connect_command" {
  value = "az aks get-credentials --resource-group ${azurerm_kubernetes_cluster.this.resource_group_name} --name ${azurerm_kubernetes_cluster.this.name} --subscription ${data.azurerm_client_config.current.subscription_id} --overwrite-existing"
}

