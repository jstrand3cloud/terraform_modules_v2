#Module outputs
output "object_id" {
  description = "The objectId of the security group."
  value       = azuread_group.group.object_id
}