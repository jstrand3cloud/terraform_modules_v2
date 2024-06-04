module "log_analytics_workspace" {
  source = "../.."

  name                       = var.name
  location                   = var.location
  resource_group             = var.resource_group
  sku                        = var.sku
  retention_in_days          = var.retention_in_days
  internet_ingestion_enabled = var.internet_ingestion_enabled
  internet_query_enabled     = var.internet_query_enabled
  tags                       = var.tags
  identity_type              = var.identity_type
}