
resource "azurerm_servicebus_namespace" "service_bus" {
  name                = var.sb_name
  location            = azurerm_resource_group.iac_rg.location
  resource_group_name = azurerm_resource_group.iac_rg.name
  sku                 = var.sb_sku

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