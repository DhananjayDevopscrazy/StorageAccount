resource "azurerm_resource_group" "Muneer1" {
  name     = "exam-RG"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "muneersa13july24"
  resource_group_name      = azurerm_resource_group.Muneer1.name
  location                 = azurerm_resource_group.Muneer1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}