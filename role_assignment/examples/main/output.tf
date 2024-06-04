#Module outputs
output "role_assignment_id" {
  description = "The objectId of the security group."
  value       = module.role_assignment.id
}