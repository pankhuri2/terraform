terraform {
  required_version = ">= 0.13.1" # see https://releases.hashicorp.com/terraform/
}

locals {
    sql_db_name = format("%s-%s" , var.sql_name ,var.suffix)
    resource_group_name = format("%s-%s", var.group_name ,var.suffix)
}

resource "google_sql_db" "default_test" {
    name                         = local.sql_db_name
    project                      = var.project_id
    resource_group_name          = local.resource_group_name
    location                     = var.location
    database_version             = var.database_version
    administrator_login          = var.administrator_login
    administrator_login_password = var.administrator_login_password
  
    tags = {
    environment = "production"
  }
}
}