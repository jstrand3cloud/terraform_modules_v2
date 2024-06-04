tags = {}

name = "testsubnetname"
virtual_network_name  = "testvnetname"
resource_group_name = "testrgname"
address_prefixes = ["10.10.10.0/24"]
private_endpoint_network_policies_enabled = true
private_link_service_network_policies_enabled = true
service_endpoints         = ["Microsoft.Storage"]
service_delegation        = []
route_table_id            = []
network_security_group_id = []