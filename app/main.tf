provider "azurerm" {
  features {}
}
#  Terraform Settings Block
terraform {
  #  Required Terraform Providers  
  required_providers {
    azurerm   = {
      source  = "hashicorp/azurerm"
      version = "2.56.0"
    }
  }
}
terraform {
    backend "azurerm" {
    }
}

module "rg" {
    source = "./rg"
    location = var.location
    resource_group_name = var.resource_group_name
}

variable location {
    description = "Location of the Virtual Net"
}

variable resource_group_name {
    description = "Resource Group Name for the virtual net"
}
