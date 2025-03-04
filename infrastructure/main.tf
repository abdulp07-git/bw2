provider "azurerm" {
  features {
    
  }
  subscription_id = "82e6f7b9-feb5-4db0-9115-0528fa4ad1c7"
}

terraform {
  backend "azurerm" {
    resource_group_name = "generalRG"
    storage_account_name = "abdbackends"
    container_name = "bw89state"
    key = "terraform.tfstate"
  }
}


module "network" {
  source = "./network"
}

module "aks" {
  source = "./aks"
  rg = module.network.resource_group_name
  location = module.network.location
  vnet-name = module.network.vnet-name
  subnet_id = module.network.subnet-id
}
