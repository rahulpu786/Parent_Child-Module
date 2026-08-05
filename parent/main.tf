module "resource_group" {
  source = "../Child/azurerm_rg"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../Child/virtual_network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../Child/subnet"
  subnets    = var.subnets
}