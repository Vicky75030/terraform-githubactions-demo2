resource "azurerm_resource_group" "test_resource_group" {
  name     = var.resource_group_name
  location = var.location


}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  depends_on = [azurerm_resource_group.test_resource_group]
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet_address_prefixes

  depends_on = [azurerm_virtual_network.main]
}



module "virtual_machine" {
  source              = "./modules/virtual_machine"
  vm_name             = var.vm_name
  location            = var.location
  resource_group_name = var.resource_group_name
  vm_size             = var.vm_size
  nic_name            = var.nic_name
  subnet_id           = azurerm_subnet.subnet.id


  depends_on = [azurerm_subnet.subnet]
}

