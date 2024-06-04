output "log_analytics_workspace_name" {
  description = "Log Analytics Workspace Display Name"
  value       = azurerm_log_analytics_workspace.log_analytics_workspace.name
}

output "log_analytics_workspace_rg_name" {
  description = "Log Analytics Workspace Resource Group Name"
  value       = azurerm_log_analytics_workspace.log_analytics_workspace.resource_group_name
}