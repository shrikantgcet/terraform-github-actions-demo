// Application insights
resource "azurerm_application_insights" "ai" {
  name                = var.ai_name
  location                  = azurerm_resource_group.iac_rg.location
  resource_group_name       = azurerm_resource_group.iac_rg.name
  workspace_id        = azurerm_log_analytics_workspace.la_ws.id
  application_type    =       "other"

    tags = merge(
    var.tags,
    {
      "Criticality" = "low",
      "Environment" = var.env,
      "Application"="AIS",
      "Owner":"IT"
    }
  )

}