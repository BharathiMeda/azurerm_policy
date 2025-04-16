terraform {
    required_version = ">= 1.4"
 requires_providers {
   azurerm = {
   source  = "hashicorp/azurerm"
   version = ">=4.12"
   }
}
provider "azurerm" {
  features {}
  }
}
