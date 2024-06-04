#Generate a random UUID for the role assignment. Else Azure will generate it's own
#If Azure generates it's own it can change over time causing subsequent runs to require changes

resource "random_uuid" "uuid" {
}

resource "azurerm_role_assignment" "role_assignment" {
  name               = random_uuid.uuid.result

  #Evaluate to see if scope is provided.  If not, then eval to determine if a management group or subscription has been provided and use that
  scope              = var.scope != null ? var.scope : (var.subscription_id != null ? data.azurerm_subscription.subscription[0].id : data.azurerm_management_group.management_group[0].id)
  role_definition_id = data.azurerm_role_definition.role_definition.id
  principal_id       = var.principal_id #This is actually the object ID, terraform refers to it as the principal ID
}

