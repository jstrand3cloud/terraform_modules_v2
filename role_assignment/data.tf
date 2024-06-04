#Expecting a subscription ID to be passed as the context running the module
#may not be the target scope of the role assignment.  This should be provided.

data "azurerm_subscription" "subscription" {
  count = var.subscription_id == null ? 0 : 1
  subscription_id = var.subscription_id
}

#Note:  A UUID or NAME can be provided for this variable.
data "azurerm_management_group" "management_group" {
  count = var.management_group_name == null ? 0 : 1
  name = var.management_group_name
}

#Data source the ID of the builtin role definition to be used
data "azurerm_role_definition" "role_definition" {
  name = var.role_definition
}

#A custom role definition could looked called by
#Adding example here to support inclusion later if custom roles are ever created

# data "azurerm_role_definition" "custom-byname" {
#   name  = azurerm_role_definition.custom.name
#   scope = data.azurerm_subscription.primary.id
# }