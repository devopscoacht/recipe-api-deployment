variable "tf_state_bucket" {
  description = "Name of the S3 bucket for state storage"
  type        = string
  default     = "devops-recipe-app-api-state"
}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table for Terraform state locking"
  type        = string
  default     = "cornel-terra-tf-lock"
}

variable "project" {
  description = "Project identifier for resource tagging"
  type        = string
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact email for resource tagging"
  type        = string
  default     = "teejayafo50@gmail.com"
}
