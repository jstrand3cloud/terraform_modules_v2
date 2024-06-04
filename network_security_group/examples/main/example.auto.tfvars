tags = {}
location  = "eastus"
name      = "nsg-insp-hub-nonprod-eaus-gateway"
resource_group_name = "testrgname"
security_rules = {
  "Allow_All_Inbound" = {
    description                  = "Allow_All_Inbound"
    protocol                     = "*"
    source_address_prefixes      = ["10.40.128.64/26"]
    source_port_ranges           = ["443"]
    destination_address_prefixes = ["*"]
    destination_port_ranges      = ["*"]
    access                       = "Allow"
    priority                     = "110"
    direction                    = "Inbound"
  },
  "Allow_All_Outbound" = {
    description                  = "Allow_All_Outbound"
    protocol                     = "*"
    source_address_prefixes      = ["*"]
    source_port_ranges           = ["*"]
    destination_address_prefixes = ["10.40.128.64/26"]
    destination_port_ranges      = ["*"]
    access                       = "Allow"
    priority                     = "120"
    direction                    = "Outbound"
  },
  "Allow_All_Inbound" = {
    description                  = "Allow_All_Inbound"
    protocol                     = "*"
    source_address_prefix        = "10.40.128.64/26"
    source_port_ranges           = ["443"]
    destination_address_prefixes = ["*"]
    destination_port_ranges      = ["*"]
    access                       = "Allow"
    priority                     = "110"
    direction                    = "Inbound"
  },
  "Allow_All_Outbound" = {
    description                  = "Allow_All_Outbound"
    protocol                     = "*"
    source_address_prefixes      = ["*"]
    source_port_ranges           = ["*"]
    destination_address_prefixes = ["10.40.128.64/26"]
    destination_port_ranges      = ["*"]
    access                       = "Allow"
    priority                     = "120"
    direction                    = "Outbound"
  },
}