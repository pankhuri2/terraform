variable "suffix" {
  description = "An arbitrary suffix that will be added to the end of the resource name(s). For example: an environment name, a business-case name, a numeric id, etc."
  type        = string
  validation {
    condition     = length(var.suffix) <= 8
    error_message = "A max of 8 character(s) are allowed."
  }
}

variable "bigtable_name" {
  type        = string
  description = "The GCP bigtable resource name that would be created."
}

variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "num_nodes" {
    type        = string
    description = "The number of nodes in your Cloud Bigtable cluster."
}

variable "storage_type" {
    type        = string
    description = "The storage type to use"
}

variable "cluster_zone" {
    type        = string
    description = "The zone to create the Cloud Bigtable cluster in"
}
