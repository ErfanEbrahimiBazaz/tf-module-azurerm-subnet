
variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type        = string
}

variable "virtual_network_name" {
  description = "(Required) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type        = string
}


variable "subnets" {
  description = "Map of subnets"
  type = map(object({
    name             = string
    address_prefixes = list(string)
    })
  )
}
