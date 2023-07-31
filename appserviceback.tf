data "azurerm_resource_group" "optima_rg_back" {
  name = var.resource_group_name
}
data "azurerm_service_plan" "optimaserviceplanback" {
 name = var.app_service_plan_back_name
 resource_group_name = data.azurerm_resource_group.optima_rg_back.name
}


resource "azurerm_linux_web_app" "webappbackCompanies" {
  name                = var.webappbackCompaniesName
  resource_group_name = data.azurerm_resource_group.optima_rg_back.name
  location            = data.azurerm_service_plan.optimaserviceplanback.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanback.id
 
  site_config {
    always_on = false
    application_stack {
      dotnet_version = "6.0" 
    }
  }
}
resource "azurerm_linux_web_app" "webappbackContacts" {
  name                = var.webappbackContactsName
  resource_group_name = data.azurerm_resource_group.optima_rg_back.name
  location            = data.azurerm_service_plan.optimaserviceplanback.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanback.id
 
  site_config {
    always_on = false
    application_stack {
      dotnet_version = "6.0" 
    }
  }
}
resource "azurerm_linux_web_app" "webappbackInvoices" {
  name                = var.webappbackInvoicesName
  resource_group_name = data.azurerm_resource_group.optima_rg_back.name
  location            = data.azurerm_service_plan.optimaserviceplanback.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanback.id
 
  site_config {
    always_on = false
    application_stack {
      dotnet_version = "6.0" 
    }
  }
}
resource "azurerm_linux_web_app" "webappbackNotification" {
  name                = var.webappbackNotificationName
  resource_group_name = data.azurerm_resource_group.optima_rg_back.name
  location            = data.azurerm_service_plan.optimaserviceplanback.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanback.id
 
  site_config {
    always_on = false
    application_stack {
      dotnet_version = "6.0" 
    }
  }
}
resource "azurerm_linux_web_app" "webappbackPurchaseorder" {
  name                = var.webappbackPurchaseorderName
  resource_group_name = data.azurerm_resource_group.optima_rg_back.name
  location            = data.azurerm_service_plan.optimaserviceplanback.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanback.id
 
  site_config {
    always_on = false
    application_stack {
      dotnet_version = "6.0" 
    }
  }
}
resource "azurerm_linux_web_app" "webappbackSecurity" {
  name                = var.webappbackSecurityName
  resource_group_name = data.azurerm_resource_group.optima_rg_back.name
  location            = data.azurerm_service_plan.optimaserviceplanback.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanback.id
 
  site_config {
    always_on = false
    application_stack {
      dotnet_version = "6.0" 
    }
  }
}
resource "azurerm_linux_web_app" "webappbacksuppliers" {
  name                = var.webappbacksuppliersName
  resource_group_name = data.azurerm_resource_group.optima_rg_back.name
  location            = data.azurerm_service_plan.optimaserviceplanback.location
  service_plan_id     = data.azurerm_service_plan.optimaserviceplanback.id
 
  site_config {
    always_on = false
    application_stack {
      dotnet_version = "6.0" 
    }
  }
}