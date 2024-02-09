resource "random_pet" "rg_name" {
    prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
    location = var.resource_group_location
    name = random_pet.rg_name.id

    tags = {
        Environment = "dev"
        Application = "Hello, World!"
        Creator     = "Jeremy Davis"
        Role        = "Friendly Red Hat Presenter"
    } 

}