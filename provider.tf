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
  tenant_id       = "2c8a943b-68c7-4312-a68c-2c66a9c99eb4"
  
}
