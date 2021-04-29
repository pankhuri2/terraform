resource "random_string" "launch_id" {
  length  = 4
  special = false
  upper   = false
}

locals {
  suffix = format("%s-%s", "tf", random_string.launch_id.result)
}

module "bigtable_tf" {
  source               = "../modules"
  suffix               = local.suffix
  project_id           = "searce-academy"
  bigtable_name        = "bigtable_test"
  zone                 = "us-central1-b"
  num_nodes            = 1
  storage_type         = "HDD"
}
