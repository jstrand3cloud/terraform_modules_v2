#Module outputs
output "id" {
  description = "The ID of the role assignment (confirmation of creation)."
  value       = azurerm_role_assignment.role_assignment.id
}