terraform {
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "38c7c146-3438-427f-8761-7b47f9381108"
  tenant_id       = "1ddbf0d7-ff8d-4f3e-9f06-f00b74abd713"
}

resource "random_id" "main" {
  byte_length = 4
}

# Generate random string to be used for Service Principal password
resource "random_string" "main" {
  length  = 20
  upper   = true
  special = true
  lower   = true
}