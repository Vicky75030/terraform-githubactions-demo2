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

  subscription_id = "d9697186-3cc0-4b84-852b-e4d5827a86cc"
  client_id       = "ulU8Q~9JBe_QESTxYvFksKnF5gx3V3o0iluuPam8"
  client_secret   = "SERVICE_PRINCIPAL_CLIENT_SECRET"
  tenant_id       = "2c8a943b-68c7-4312-a68c-2c66a9c99eb4"
  
}
