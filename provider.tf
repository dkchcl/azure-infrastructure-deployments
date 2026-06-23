terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "dkctfstate-rg"
    storage_account_name = "dkctfstatestg6528"
    container_name       = "devtfstate"
    key                  = "dev.terraform.tfstate"    
  }
}

provider "azurerm" {
    features {}
    subscription_id = "e878567a-9df3-414b-a7d4-46f465efb83b"
}


