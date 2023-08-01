data "azurerm_resource_group" "optima_rg_service_bus" {
  name = var.resource_group_name
}

resource "azurerm_servicebus_namespace" "optima_servicebus" {
  name                     = var.service_bus_name
  location            = data.azurerm_resource_group.optima_rg_service_bus.location
  resource_group_name = data.azurerm_resource_group.optima_rg_service_bus.name
  sku                 = "Basic"
  tags = {
    Cruise      = "Galactic"
    Environment = "Prd"
    Project     = "Optima"
  }
}