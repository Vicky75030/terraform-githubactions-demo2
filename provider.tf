terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.79"
    }
  }

}

provider "azurerm" {
  features {}

  subscription_id = "SUBSCRIPTION_ID"
  client_id       = "SERVICE_PRINCIPAL_CLIENT_ID"
  client_secret   = "SERVICE_PRINCIPAL_CLIENT_SECRET"
  tenant_id       = "TENANT_ID"
  
}
