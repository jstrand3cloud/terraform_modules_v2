module "storage_account" {
  source = "../.."

  storage_account_name                   = var.storage_account_name
  location                               = var.location
  resource_group_name                    = var.resource_group_name
  account_kind                           = var.account_kind
  account_tier                           = var.account_tier
  storage_account_replication_type       = var.storage_account_replication_type
  min_tls_version                        = var.min_tls_version
  storage_account_is_gen2                = var.storage_account_is_gen2
  enable_https_traffic_only              = var.enable_https_traffic_only
  nfsv3_enabled                          = var.nfsv3_enabled
  allow_nested_items_to_be_public        = var.allow_nested_items_to_be_public
  tags                                   = var.tags
  identity_type                          = var.identity_type
  storage_account_network_default_action = var.storage_account_network_default_action
  storage_account_network_bypass         = var.storage_account_network_bypass
  storage_account_containers             = var.storage_account_containers
}