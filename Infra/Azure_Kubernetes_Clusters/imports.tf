import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/2d9da2a8-7cb8-47a7-9595-d04dc9b8e06d/resourceGroups/RG-DSCU-SecCluster-03"
}

import {
  to = azurerm_resource_group.ai-services
  id = "/subscriptions/2d9da2a8-7cb8-47a7-9595-d04dc9b8e06d/resourceGroups/RG-AI-Service-Resources"
}

import {
  to = azurerm_resource_group.rg-app-service
  id = "/subscriptions/2d9da2a8-7cb8-47a7-9595-d04dc9b8e06d/resourceGroups/RG-DSCU-app-service-00003"
}

import {
  to = azurerm_kubernetes_cluster.aks
  id = "/subscriptions/2d9da2a8-7cb8-47a7-9595-d04dc9b8e06d/resourceGroups/RG-DSCU-SecCluster-03/providers/Microsoft.ContainerService/managedClusters/AKS-DSCU-SecCluster"
}

import {
  to = azurerm_cognitive_account.ai-service-OpenAIs
  id = "/subscriptions/2d9da2a8-7cb8-47a7-9595-d04dc9b8e06d/resourceGroups/RG-AI-Service-Resources/providers/Microsoft.CognitiveServices/accounts/oai-service-account-01"
}

import {
  to = azurerm_cognitive_deployment.oai-model-deployment-01
  id = "/subscriptions/2d9da2a8-7cb8-47a7-9595-d04dc9b8e06d/resourceGroups/RG-AI-Service-Resources/providers/Microsoft.CognitiveServices/accounts/oai-service-account-01/deployments/gpt-4-deployment-01"
}


----------------- Not required for import 
import {
  to = azurerm_cognitive_deployment.models
  id = "/subscriptions/2d9da2a8-7cb8-47a7-9595-d04dc9b8e06d/resourceGroups/RG-AI-Service-Resources/providers/Microsoft.CognitiveServices/accounts/oai-service-account-01/deployments/gpt-4-o"
}

import {
  to = azurerm_cognitive_deployment.models
  id = "/subscriptions/2d9da2a8-7cb8-47a7-9595-d04dc9b8e06d/resourceGroups/RG-AI-Service-Resources/providers/Microsoft.CognitiveServices/accounts/oai-service-account-01/deployments/gpt-4o-mini"
}

