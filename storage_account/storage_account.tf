resource "azurerm_storage_account" "storage_account" {

  name                            = var.storage_account_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  account_kind                    = var.account_kind
  account_tier                    = var.account_tier
  account_replication_type        = var.storage_account_replication_type
  min_tls_version                 = var.min_tls_version
  is_hns_enabled                  = var.storage_account_is_gen2
  enable_https_traffic_only       = var.enable_https_traffic_only
  nfsv3_enabled                   = var.nfsv3_enabled
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  tags                            = var.tags

  identity {
    type         = var.identity_type
    identity_ids = var.identity_ids
  }

  network_rules {
    default_action             = var.storage_account_network_default_action
    bypass                     = var.storage_account_network_bypass
    ip_rules                   = var.storage_account_allowed_public_ips
    virtual_network_subnet_ids = var.virtual_network_subnet_ids
  }

  blob_properties {
    versioning_enabled  = var.storage_account_is_versioning_enabled
    change_feed_enabled = var.change_feed_enabled

    dynamic "container_delete_retention_policy" {
      for_each = var.soft_delete_blobs_days != null ? toset(["container_policy"]) : toset([])

      content {
        days = var.soft_delete_containers_days
      }
    }

    dynamic "delete_retention_policy" {
      for_each = var.soft_delete_blobs_days != null ? toset(["blobs_policy"]) : toset([])

      content {
        days = var.soft_delete_blobs_days
      }
    }
  }
}

#Give the storage account access to the key vault to retrieve the CMK
resource "azurerm_key_vault_access_policy" "storage_policy" {
  count           = var.enable_cmk == true ? 1 : 0 

  key_vault_id    = var.key_vault_id
  tenant_id       = data.azurerm_client_config.current.tenant_id
  object_id       = azurerm_storage_account.storage_account.identity.0.principal_id
  key_permissions = ["Get", "UnwrapKey", "WrapKey"]

  depends_on      = [azurerm_storage_account.storage_account]
}

#Apply the CMK
resource "azurerm_storage_account_customer_managed_key" "customer_managed_key" {
  count              = var.enable_cmk == true ? 1 : 0

  storage_account_id = azurerm_storage_account.storage_account.id
  key_vault_id       = var.key_vault_id
  key_name           = var.key_name

  depends_on      = [azurerm_storage_account.storage_account, azurerm_key_vault_access_policy.storage_policy]
}