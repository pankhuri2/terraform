resource "random_string" "release_id" {
  length  = 4
  special = false
  upper   = false
}

locals {
  suffix = format("%s-%s", "tf", random_string.release_id.result)
}

module "devtest" {
  source                        = "../modules"
  suffix                        = local.suffix
  project_id                    = "searce-academy"
  sql_db_name                   = "env_default"
  resource_group_name           = "default_test" 
  database_version              = "12.0"
  administrator_login           = "my_sql_db_id"
  administrator_login_password  = "123567890@pankh"
  location                      = "West US"
}
