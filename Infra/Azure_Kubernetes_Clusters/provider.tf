terraform {
  required_version = ">= 1.0.0" #1.15.0
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.60.0"
    }
  }
}
    #,
    #aws = {
    #  source = "hashicorp/aws"
    #  version = "4.60.0"
    #},
    #gcp = {
    #  source = "hashicorp/gcp"
    #  version = "4.60.0"
    #},
    #oci = {
    #  source = "hashicorp/oci"
    #  version = "4.60.0"
    #},
    #bizfly = {
    #  source = "hashicorp/bizfly"
    #  version = "4.60.0"
    #},
    #null = {
    #  source = "hashicorp/null"
    #  version = "4.60.0"
    #},
    #random = {
    #  source = "hashicorp/random"
    #  version = "4.60.0"
    #},
    #azapi = {
    #  source = "hashicorp/azapi"
    #  version = "4.60.0"
    # },
    #kubernates = {
    #  source = "hashicorp/kubernates"
    #  version = "4.60.0"
    #},
    #databricks = {
    #  source = "hashicorp/databricks"
    #  version = "4.60.0"
    #}
  #}
#}

# Configure the Azure Provider
provider "azurerm" {
  features {

  }
}
#provider "aws" {
 # features {
 # }
  #,
#provider "gcp" {
#  features {
#
 # },
#provider "oci" {
 # features {
#
 # },
#provider "bizfly" {
   # features {
#
# },
#}
