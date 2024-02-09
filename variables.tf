variable "resource_group_location" {
    type = string
    default = "eastus"
    description = "Location of the resource group"
}

variable "resource_group_name_prefix" {
    type = string
    default = "rg"
    description = "Prefix for the resource group name"  
}

variable "sku" {
  type        = string
  description = "The sku name of the Azure Analysis Services server to create. Choose from: B1, B2, D1, S0, S1, S2, S3, S4, S8, S9. Some skus are region specific. See https://docs.microsoft.com/en-us/azure/analysis-services/analysis-services-overview#availability-by-region"
  default     = "S0"
}