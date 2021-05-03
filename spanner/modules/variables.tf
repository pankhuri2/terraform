variable "suffix" {
  description = "An arbitrary suffix that will be added to the end of the resource name(s). For example: an environment name, a business-case name, a numeric id, etc."
  type        = string
  validation {
    condition     = length(var.suffix) <= 8
    error_message = "A max of 8 character(s) are allowed."
  }
}

variable "instance_id" {
    type        = string
    description = "A unique identifier for database"
}

variable "config" {
    type        = string
    description = "spanner instance config"
}

variable "display_name" {
    type        = string
    description = "The descriptive name for this instance "
}
  
variable "num_nodes" {
    type        = string
    description = "The number of nodes allocated to this instance."       
}

variable "project_id" {
    type        = string
    description = " The ID of the project in which the resource belongs."
}

variable "spanner_instance_timeout" {
   type         = string
   default      = "5m"
   description  = "How long a Google Spanner Instance creation operation is allowed to take before being considered a failure."
}
