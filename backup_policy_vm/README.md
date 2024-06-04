<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) | >= 3.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_backup_policy_vm.policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_policy_vm) | resource |

## Example Usage

```hcl
module "backup_policy_vm" {
  source                  = "../.."
  backup_policy_name      = var.backup_policy_name
  bp_resource_group_name  = var.bp_resource_group_name
  recovery_vault_name     = var.recovery_vault_name
  backup_policy_type      = var.backup_policy_type
  backup_policy_time_zone = var.backup_policy_time_zone
  backup_policy_frequency = var.backup_policy_frequency
  backup_policy_time      = var.backup_policy_time
  backup_policy_retention_daily_count = var.backup_policy_retention_daily_count
  backup_policy_retention_weekly_count = var.backup_policy_retention_weekly_count
  backup_policy_retention_weekly_weekdays = var.backup_policy_retention_weekly_weekdays
  backup_policy_retention_monthly_count = var.backup_policy_retention_monthly_count
  backup_policy_retention_monthly_weekdays = var.backup_policy_retention_monthly_weekdays
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backup_policy_name"></a> [backup_policy_name](#input_backup_policy_name) | The display name of the Backup Policy to be created | `string` | n/a | yes |
| <a name="input_bp_resource_group_name"></a> [bp_resource_group_name](#input_bp_resource_group_name) | The name of the resource group of the Backup Policy to be created | `string` | n/a | yes |
| <a name="input_recovery_vault_name"></a> [recovery_vault_name](#input_recovery_vault_name) | The name of the Recovery Vault that the Backup Policy will be assigned to | `string` | n/a | yes |
| <a name="input_backup_policy_type"></a> [backup_policy_type](#input_backup_policy_type) | (Optional) Indicates which version type to use when creating the backup policy | `string` | "V2" | no |
| <a name="input_backup_policy_time_zone"></a> [backup_policy_time_zone](#input_backup_policy_time_zone) | (Optional) Indicates the timezone that the policy will use | `string` | "UTC" | no |
| <a name="input_backup_policy_frequency"></a> [backup_policy_frequency](#input_backup_policy_frequency) | (Optional) Indicate the frequency to use for the backup policy | `string` | "Daily" | no |
| <a name="input_backup_policy_time"></a> [backup_policy_time](#input_backup_policy_time) | (Optional) Indicates the time for when to execute the backup policy | `string` | "23:00" | no |
| <a name="input_backup_policy_retention_daily_count"></a> [backup_policy_retention_daily_count](#input_backup_policy_retention_daily_count) | (Optional) Indicates the number of daily backups to retain (set to blank to disable) | `number` | 7 | no |
| <a name="input_backup_policy_retention_weekly_count"></a> [backup_policy_retention_weekly_count](#input_backup_policy_retention_weekly_count) | (Optional) Indicates the number of weekly backups to retain (set to blank to disable) | `number` | 4 | no |
| <a name="input_backup_policy_retention_weekly_weekdays"></a> [backup_policy_retention_weekly_weekdays](#input_backup_policy_retention_weekly_weekdays) | (Optional) Indicates which days of the week the weekly backup will be taken | `set(string)` | ["Saturday"] | no |
| <a name="input_backup_policy_retention_monthly_count"></a> [backup_policy_retention_monthly_count](#input_backup_policy_retention_monthly_count) | (Optional) Indicates the number of monthly backups to retain (set to blank to disable) | `number` | 6 | no |
| <a name="input_backup_policy_retention_monthly_weekdays"></a> [backup_policy_retention_monthly_weekdays](#input_backup_policy_retention_monthly_weekdays) | (Optional) Indicates which days of the week the monthly backup will be taken | `set(string)` | ["Saturday"] | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output_id) | The ID of the Backup Policy |


## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0 |
<!-- END_TF_DOCS -->