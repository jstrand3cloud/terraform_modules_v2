output "id" {
  value       = azurerm_lb_backend_address_pool.load_balancer_pool.id
  description = "The ID of the pool created."
}