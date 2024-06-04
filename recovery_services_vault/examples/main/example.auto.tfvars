  recovery_services_vault_name             = "demorsv"
  location                                 = "eastus"
  rsv_resource_group_name                  = "rsv_test_rg"
  vault_sku                                = "Standard"
  storage_mode_type                        = "ZoneRedundant"
  rsv_public_network_access_enabled        = false
  tags = {
  Component = "IAC"
}