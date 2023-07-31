resource_group_name="APPResourceGroup"

resource_group_location="Central US"

app_service_plan_name="abcappplan"

appservice_name=["abcFronted","abcBackend"]

enable_system_managed_identity=true

application_insights="abcdapplication"

enable_AppService_AutoScale= true
containers=[
    {
        "name"="testconatiner1"
        container_access_type = "private"
        storage_account_name = "storagedev001"
    },
    {
        "name"="testconatiner2"
        container_access_type = "private"
        storage_account_name ="storagedev001"
    }
    ]

    keyvault_Name="keyvaultDev123"

    key_permissions=[
        "Get",
        "Create",
        "Delete",
        "Import",
        "List",
        "Purge",
        "Recover",
      ]
    secret_permissions=[
      "Get",
      "Set",
      "Delete",
      "List",
      "Purge",
      "Recover",
    ]

    sqlserver_name="abc-sqlserver"

    subnet_prefix=[
    {
      ip      = "10.0.1.0/24"
      name     = "subnet-1"
      service_endpoints=["Microsoft.Storage","Microsoft.Sql","Microsoft.Web"]

    },
    {
      ip      = "10.0.2.0/24"
      name     = "subnet-2"
      service_endpoints=["Microsoft.Web","Microsoft.Sql","Microsoft.Storage"]
      delegation={
        name="my-delegation"
        service_delegation={
          name="Microsoft.Web/serverFarms"
          actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
          }
      }
    }
   ]
 sql_databases=[
 {
   name="Employeedatabase"
   sku_name = "S0"
   enable_database_extended_auditing_policy=false
 },
  {
   name="HRDataBase"
   sku_name = "S0"
   enable_database_extended_auditing_policy=false
 }
 ]

 app_service_sku={
    tier="Standard"
     size="S1"
 }

 StorageAccounts=[
  {
    name="storagedev001"
    account_tier="Standard"
    account_replication_type="GRS"
    default_action = "Allow"
    ip_rules =[]
    virtual_network_subnet_ids=[]
  }
 ]
  