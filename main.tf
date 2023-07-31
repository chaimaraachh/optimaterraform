provider "azurerm" {
    features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.52.0"
    }
  }
}

data "azurerm_resource_group" "optima_rg_main" {
  name = var.resource_group_name
}