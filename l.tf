resource "azurerm_app_service" "cyborg" {
  name                = "service"
  location            = azurerm_resource_group.glints.location
  resource_group_name = azurerm_resource_group.glints.name
  app_service_plan_id = azurerm_app_service_plan.glints.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
    min_tls_version = 1.1
  }
}
