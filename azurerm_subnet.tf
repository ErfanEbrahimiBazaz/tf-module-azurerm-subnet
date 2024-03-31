resource "azurerm_subnet" "vnet_subnet" {
  for_each             = var.subnets
  name                 = each.value.name            
  address_prefixes     = each.value.address_prefixes 
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name

}