rg_name                          = "cmtr-82c341d6-mod3-rg"
location                         = "North Europe"
storage_account_name             = "cmtr82c341d6sa1728654013"
storage_account_replication_type = "LRS"
vnet_name                        = "cmtr-82c341d6-mod3-vnet"
vnet_address_space               = ["10.0.0.0/16"]
public_snet_name                 = "frontend"
public_snet_address_prefixes     = ["10.0.1.0/24"]
private_snet_name                = "backend"
private_snet_address_prefixes    = ["10.0.2.0/24"]
tags = {
  Creator = "dmytro_povarchuk@epam.com"
}
