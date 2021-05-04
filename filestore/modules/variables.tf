variable "suffix" {
  description = "An arbitrary suffix that will be added to the end of the resource name(s). For example: an environment name, a business-case name, a numeric id, etc."
  type        = string
  validation {
    condition     = length(var.suffix) <= 14
    error_message = "A max of 14 character(s) are allowed."
  }
}

variable "filestore_name" {
  type        = string
  description = "The GCP filestore resource name that would be created."
}

variable "filestore_tier" {
  type        = string
  description = "The service tier of the filestore instance. Possible values are TIER_UNSPECIFIED, STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, and HIGH_SCALE_SSD."
}

variable "filestore_share_name" {
  type        = string
  description = "The name of the fileshare (16 characters or less)."
}

variable "zone" {
  type        = string
  description = "The name of the Filestore zone of the instance."
}

variable "vpc_network_name" {
  type        = string
  description = "Virtual Private Cloud in which our GCP Filestore being created."
}

variable "network_modes" {
  type        = list(string)
  description = "IP versions for which the instance has IP addresses assigned. Each value may be one of ADDRESS_MODE_UNSPECIFIED, MODE_IPV4, and MODE_IPV6."
}

variable "gcp_project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "filestore_capacity" {
  type        = number
  default     = 2560
  description = "File share capacity in GiB."
}

variable "region" {
  type        = string
  description = "The name of the Filestore region of the instance."
}

variable "filestore_timeout" {
  type        = string
  default     = "10m"
  description = "How long a Filestore Instance creation/deletion/updation operation is allowed to take before being considered a failure."
}