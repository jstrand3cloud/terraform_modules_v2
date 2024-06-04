<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.role_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [random_uuid.uuid](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |
| [azurerm_management_group.management_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/management_group) | data source |
| [azurerm_role_definition.role_definition](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/role_definition) | data source |
| [azurerm_subscription.subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

# Example Usage

```hcl
module "role_assignment" {
  source = "../../"

  subscription_id         = var.subscription_id
  management_group_name   = var.management_group_name
  scope                   = var.scope
  role_definition         = var.role_definition
  principal_id            = var.principal_id
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_management_group_name"></a> [management\_group\_name](#input\_management\_group\_name) | (Optional) A management group name or UUID.  Either a management group name, a subscription ID, or scope must be provided. | `string` | `null` | no |
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | (Required) The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created. The Principal ID is also known as the Object ID (ie not the Application ID for applications). | `string` | `null` | no |
| <a name="input_role_definition"></a> [role\_definition](#input\_role\_definition) | (Required) The name of a built in role such as Contributor | `string` | `null` | no |
| <a name="input_scope"></a> [scope](#input\_scope) | (Optional) An Azure resource ID used for scope.  Either a management group name, a subscription ID, or scope must be provided. | `string` | `null` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | (Optional) A subscription ID for scope.  Either a management group name, a subscription ID, or scope must be provided. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_object_id"></a> [object\_id](#output\_object\_id) | The ID of the role assignment (confirmation of creation). |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |
<!-- END_TF_DOCS -->