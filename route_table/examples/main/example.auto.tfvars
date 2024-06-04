tags = {}
location = "eastus"
name = "testroutetable"
resource_group_name = "testrgname"
routes = {
  To_Internet = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.40.128.196"
  },
  To_VNET_Local = {
    address_prefix         = "10.40.128.64/26"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.40.128.196"
  }
}