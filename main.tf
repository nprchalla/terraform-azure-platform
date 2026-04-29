module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = module.resource_group.name
  location            = var.location
  vnet_name           = "vnet-dev"
  address_space       = ["10.0.0.0/16"]
  subnet_name         = "subnet-dev"
  subnet_prefix       = ["10.0.1.0/24"]
}

module "nsg" {
  source              = "./modules/nsg"
  resource_group_name = module.resource_group.name
  location            = var.location
  nsg_name            = "nsg-dev"
  subnet_id           = module.network.subnet_id
}

module "log_analytics" {
  source              = "./modules/log_analytics"
  workspace_name      = "log-dev-platform-001"
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "aks" {
  source                     = "./modules/aks"
  cluster_name               = var.aks_cluster_name
  location                   = var.location
  resource_group_name        = module.resource_group.name
  dns_prefix                 = var.dns_prefix
  node_count                 = var.node_count
  vm_size                    = var.vm_size
  subnet_id                  = module.network.subnet_id
  log_analytics_workspace_id = module.log_analytics.workspace_id
}