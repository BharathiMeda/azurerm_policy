resource "azurerm_policy_definition" "def" {
  name         =  "TestPolicy"
  display_name = "acceptance test policy definition"
  policy_type  = "Custom"
  mode         = "Indexed"

  management_group_id = var.management_group_id

  metadata    = jsonencode(local.metadata)
  parameters  = length(local.parameters) > 0 ? jsonencode(local.parameters) : null
  policy_rule = jsonencode(local.policy_rule)
}


