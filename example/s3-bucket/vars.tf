# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# These variables are expected to be passed in by the operator when calling this terraform module
# ---------------------------------------------------------------------------------------------------------------------
variable "bucket_name" {
  description = "Name of the S3 bucket to create."
  type        = string
}


# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These variables are optional
# ---------------------------------------------------------------------------------------------------------------------
variable "environment" {
  description = "Name of the environment that the bucket is deployed to."
  type        = string
  default     = "dev"
}
variable "bucket_acl" {
  description = "The type of ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write."
  type        = string
  default     = "private"
}

