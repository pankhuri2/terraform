resource "random_string" "launch_id" {
  length  = 4
  special = false
  upper   = false
}

locals {
  suffix = format("%s-%s", "tf", random_string.launch_id.result)
}

module "spanner_check" {
  source       = "../modules"
  suffix       = local.suffix
  instance_id  = "wesley-may"
  project_id   = "searce-academy"
  display_name = "test_spanner_instance"
  num_nodes    = 1
  config       = "regional-us-central1"


}