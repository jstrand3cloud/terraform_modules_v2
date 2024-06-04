#Create the pool
resource "azurerm_lb_backend_address_pool" "load_balancer_pool" {
  loadbalancer_id = var.loadbalancer_id
  name            = var.name
}