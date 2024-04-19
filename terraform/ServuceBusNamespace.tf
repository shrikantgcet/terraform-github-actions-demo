
resource "azurerm_servicebus_namespace" "service_bus" {
  name                = var.sb_name
  location            = azurerm_resource_group.iac_rg.location
  resource_group_name = azurerm_resource_group.iac_rg.name
  sku                 = var.sb_sku

   tags = merge(
    var.tags,
    {
      "serviceType" = "genting-sb-np-01",
      "description" = "Integration Service Bus"
    }
  )
}