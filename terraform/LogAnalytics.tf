/*
  Log Analytics
*/



resource "azurerm_log_analytics_workspace" "la_ws" {
  name                     = var.la_name
  location                  = azurerm_resource_group.iac_rg.location
  resource_group_name       = azurerm_resource_group.iac_rg.name
  sku                       = "PerGB2018"
  retention_in_days           = 90

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
