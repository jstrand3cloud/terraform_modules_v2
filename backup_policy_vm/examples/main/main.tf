module "backup_policy_vm" {
  source                                   = "../.."
  backup_policy_name                       = var.backup_policy_name
  bp_resource_group_name                   = var.bp_resource_group_name
  recovery_vault_name                      = var.recovery_vault_name
  backup_policy_type                       = var.backup_policy_type
  backup_policy_time_zone                  = var.backup_policy_time_zone
  backup_policy_frequency                  = var.backup_policy_frequency
  backup_policy_time                       = var.backup_policy_time
  backup_policy_retention_daily_count      = var.backup_policy_retention_daily_count
  backup_policy_retention_weekly_count     = var.backup_policy_retention_weekly_count
  backup_policy_retention_weekly_weekdays  = var.backup_policy_retention_weekly_weekdays
  backup_policy_retention_monthly_count    = var.backup_policy_retention_monthly_count
  backup_policy_retention_monthly_weekdays = var.backup_policy_retention_monthly_weekdays
}