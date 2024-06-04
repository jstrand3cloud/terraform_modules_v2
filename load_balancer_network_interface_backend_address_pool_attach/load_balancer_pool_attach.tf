resource "azurerm_network_interface_backend_address_pool_association" "load_balancer_nic_attach" {
  network_interface_id    = var.network_interface_id
  ip_configuration_name   = var.ip_configuration_name
  backend_address_pool_id = var.backend_address_pool_id
}