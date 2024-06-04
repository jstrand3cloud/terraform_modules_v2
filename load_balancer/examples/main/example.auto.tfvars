name                               = "lbname"
location                           = "eastus"
resource_group_name                = "rgname"
tags                               = {}
sku                                = "Standard"
sku_tier                           = "Regional"
private_frontend_ip_configurations = {
  default = {
    name               = "default"
    subnet_id          = "/subnetIDHere" #Note, this is a bit of pain to get through the portal, but essentially is the VNET's ID /subnet/subnetname
    private_ip_address = "192.168.1.4"
  }
}