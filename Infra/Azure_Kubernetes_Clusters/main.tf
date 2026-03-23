# Create a Resource Group for SouthCentralUS location for SecurityCluster
resource "azurerm_resource_group" "rg" {
  name     = "RG-Dev-EUS-SecClutr-03"
  location = "eastUS"
  tags = {
    name = "Deepak_Admin"
    phone_Number = "+918374166525"
    email_id = "Deepak@deloitte.com"
    logs_transer="splunk-cloud"
  }
}

# Create the AKS Cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "AKS-Dev-EUS-SecClutr"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "wellfFargoaksseccluster"
  node_resource_group = "wellsnodegroup"

  default_node_pool {
    name       = "systempool"
    node_count = 2
    vm_size    = "standard_d2as_v7"
    #vnet_subnet_id = azurerm_subnet.example.id
    // os_type is NOT used here
    os_sku  = "Ubuntu" 
    #os_sku     = "AzureLinux" # Use os_sku for specific Linux distro or Windows
  }

  #identity {
  #  type = "SystemAssigned"
  #}

  # Private cluster 
  # private_cluster_enabled = true

  # Use "System" to let AKS manage the private DNS zone, or provide a specific ID
  private_dns_zone_id = "System" 


  #azure_active_directory_rbac {
  #  managed               = true
  #  tenant_id             = data.azurerm_client_config.current.tenant_id
  #  admin_group_object_ids = [var.aad_admin_group_object_id]
  #  azure_rbac_enabled    = true
  #}

   identity {
    type = "SystemAssigned"                       # Or "UserAssigned"
  }

  #AI Toolchain Operator (Optional)  
  #If your goal is running AI models (like Llama or Falcon), you can enable the AI Toolchain Operator (KAITO) directly in your cluster resource:
  ai_toolchain_operator_enabled = true
  oidc_issuer_enabled           = true


  tags = {
    Environment = "Dev"
    apm_number = "apm000401"
  }
}


#resource "azurerm_linux_virtual_machine" "linxu_vm_gokul_005_navi-mumbai" {
# name = "linxu_vm_gokul_005_navi-mumbai"
# location = "southeast"
# size = "Standard_DS2_v2"
#}
# 
#
#data "azurerm_resource_group" "rg-app-service" {

#}

#module "app-services" {
#  #source = "./azure_app_service.tf"
#  source = "https://github-edwardjones.com/aiops_repo/?=ref_branch = main"
#  source = "https://github-edwardjones.com/aiops_repo/?=ref_tag = aiops_fin_app"
#  source = "https://github-edwardjones.com/aiops_repo/?=ref_version =v-0.0.30"
#  source = "https://github-edwardjones.com/aiops_repo/?=ref_env = dev"
#  source = "https://appio-terraform-edwardjones.com/aiops_repo/?=ref_branch = main"
#  source = "ssh@github-edwardjones.com/aiops_repo/?=ref_branch = main"

# terraform-dev.tfvars  -->
# terraform_cloud_saas_username ="heamnth"
# terraform_cloud_saas_password ="*******"
# db_postgres_sql = "username"

#terraform-qa.tfvars  -->
# terraform_cloud_saas_username ="heamnth"
# terraform_cloud_saas_password ="*******"
# db_postgres_sql = "username"

#terraform-preprod.tfvars  -->
# terraform_cloud_saas_username ="heamnth"
# terraform_cloud_saas_password ="*******"
# db_postgres_sql = "username"

#terraform-prod.tfvars  -->
# terraform_cloud_saas_username ="heamnth"
# terraform_cloud_saas_password ="*******"
# db_postgres_sql = "username"
#}