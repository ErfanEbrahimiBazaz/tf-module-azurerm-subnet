
output "subnet_ids" {
  description = "The IDs of the Subnets."
  # value = azurerm_subnet.vnet_subnet[*].id
  value = { for subnet_key, subnet in azurerm_subnet.vnet_subnet : subnet_key => subnet.id }
}

output "address_prefixes" {
  description = "The address prefixes for the subnet."
  # value = azurerm_subnet.vnet_subnet[*].address_prefixes
  value = { for subnet_key, subnet in azurerm_subnet.vnet_subnet : subnet_key => subnet.address_prefixes }
}

output "service_endpoints" {
  description = "service_endpoints - A list of Service Endpoints within this subnet."
  # value = azurerm_subnet.vnet_subnet[*].service_endpoint_policy_ids
  value = { for subnet_key, subnet in azurerm_subnet.vnet_subnet : subnet_key => subnet.service_endpoint_policy_ids }
}

output "private_endpoint_network_policies_enabled" {
  description = "Enable or Disable network policies for the private endpoint on the subnet."
  # value = azurerm_subnet.vnet_subnet[*].private_endpoint_network_policies_enabled
  value = { for subnet_key, subnet in azurerm_subnet.vnet_subnet : subnet_key => subnet.private_endpoint_network_policies_enabled }
}

output "private_link_service_network_policies_enabled" {
  description = "Enable or Disable network policies for the private link service on the subnet."
  # value = azurerm_subnet.vnet_subnet[*].private_link_service_network_policies_enabled
  value = { for subnet_key, subnet in azurerm_subnet.vnet_subnet : subnet_key => subnet.private_link_service_network_policies_enabled }
}
