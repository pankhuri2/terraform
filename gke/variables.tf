variable "google_container_cluster" {
    type  = string
    default = "us-central1-c"
    description = "location where GKE Cluster being created"
}
  
  variable "google_container_node_pool" {
      type = string
      default = "us-central1-c"
      description = "location where node pool of certain Gke Cluster being created"
  }

  variable "node_config" {
      type = string
      default = "e2-medium"
      description = "Machine_type with you can migrate your workloads to nodes"
  }

  variable "gke_cluster_name" {
      type = string
      default = "orbit"
      description = "GKE Cluster Name"
  }
