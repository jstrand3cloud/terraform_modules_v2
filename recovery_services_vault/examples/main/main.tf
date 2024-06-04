module "recovery_services_vault" {
  source                                   = "../.."
  recovery_services_vault_name             = var.recovery_services_vault_name
  location                                 = var.location
  rsv_resource_group_name                  = var.resource_group_shared.name
  vault_sku                                = var.vault_sku
  storage_mode_type                        = var.storage_mode_type
  rsv_public_network_access_enabled        = var.rsv_public_network_access_enabled
  tags                                     = var.tags
}