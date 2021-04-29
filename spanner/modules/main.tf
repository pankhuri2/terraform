terraform {
  required_verion =">= 0.13.1"
}

locals {
  instance_id   = format("%s-%s", var.instance_id, var.suffix)
}

resource "google_project_service" "spanner_api" {
  service            = "spanner.googleapis.com"
  disable_on_destroy = false
}

resource "google_spanner_instance" "test_spanner" {
    name         = local.instance_id
    config       = var.config
    display_name = var.display_name
    num_nodes    = var.num_nodes
    project      = var.project_id
    

    timeouts {
      create  = var.spanner_instance_timeout
      update  = var.spanner_instance_timeout 
      delete  = var.spanner_instance_timeout
    
    }

  
}