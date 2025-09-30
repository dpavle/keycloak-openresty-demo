terraform {
  required_version = ">=0.12"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    github = {
      source = "integrations/github"
      version = "~> 6.0"
    }
    ansible = {
      source = "ansible/ansible"
      version = "~> 1.3.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tfstate"
    storage_account_name = "tfstate13416"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
