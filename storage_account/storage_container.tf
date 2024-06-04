resource "azurerm_storage_container" "storage_container" {
  for_each = var.storage_account_containers

  name                  = each.value
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}