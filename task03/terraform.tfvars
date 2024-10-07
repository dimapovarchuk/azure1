rg_name                          = "cmaz-82c341d6-mod3-rg"
location                         = "North Europe"
storage_account_name             = "cmaz82c341d6mod3sa"
storage_account_replication_type = "LRS"
vnet_name                        = "cmaz-82c341d6-mod3-vnet"
vnet_address_space               = ["10.0.0.0/16"]
public_snet_name                 = "frontend"
public_snet_address_prefixes     = ["10.0.1.0/24"]
private_snet_name                = "backend"
private_snet_address_prefixes    = ["10.0.2.0/24"]
tags = {
  Creator = "name_surname@epam.com"
}
