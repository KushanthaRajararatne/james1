resource "azurerm_network_security_rule" "tester1667" {
     name                        = "tester1667one"
     priority                    = 100
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "TCP"
     source_port_range           = "*"
     destination_port_range      = "3389"
     source_address_prefix       = "*"
     destination_address_prefix  = "*"
     resource_group_name         = azurerm_resource_group.glints.name
     network_security_group_name = azurerm_network_security_group.glints.name
