data "azurerm_resource_group" "optima_rg_front" {
  name = var.resource_group_name
}

data "azurerm_service_plan" "optimaserviceplanfront" {
 name = var.app_service_plan_front_name
 resource_group_name = data.azurerm_resource_group.optima_rg_front.name
}


resource "azurerm_windows_web_app" "webappOptima" {

  name                = var.webappnamefront
  resource_group_name = data.azurerm_resource_group.optima_rg_front.name
  location            = data.azurerm_service_plan.optimaserviceplanfront.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanfront.id
  site_config {
    always_on = false
    application_stack {
      node_version = "~18" 
    }
  }
}

resource "azurerm_windows_web_app" "webappOptimaAdmin" {

  name                = var.webappnamefrontadmin
  resource_group_name = data.azurerm_resource_group.optima_rg_front.name
  location            = data.azurerm_service_plan.optimaserviceplanfront.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanfront.id
  site_config {
    always_on = false
    application_stack {
      node_version = "~18" 
    }
  }
}
