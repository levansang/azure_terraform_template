terraform {
  backend "azurerm" {
    resource_group_name     = "rg-CorpDegiAd-stg"
    storage_account_name    = "newadstg"
    container_name          = "newadstg-container"
    key                     = "newadstg.tfstate"
  }
}