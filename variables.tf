variable "bucket_name" {
  description = "Name of the S3 bucket to be created."
  default     = ""
  type        = string
}

variable "force_destroy" {
  description = "Whether or not to delete all objects from the bucket to allow for destruction of the bucket without error."
  default     = false
  type        = bool
}

variable "versioning_enabled" {
  description = "Whether or not to enable versioning for the S3 bucket, which allows multiple versions of an object to be stored in the same bucket."
  default     = false
  type        = bool
}

variable "logging" {
  description = "Configuration for S3 bucket access logging."
  default     = true
  type        = bool
}

variable "environment" {
  description = "Specify the type of environment(dev, demo, prod) in which the S3 bucket will be created. "
  default     = "demo"
  type        = string
}

variable "cloudwatch_logging" {
  description = "Configuration for CloudWatch log group logging."
  default     = true
  type        = bool
}

variable "cw_retention_days" {
  description = "Cloudatch log group retention period in days"
  default = 90
  type = number
}

variable "s3_galcier_retention_days" {
  description = "S3 log data retention period moved to Glacier"
  default = 180
  type = number
}

variable "s3_ia_retention_days" {
  description = "S3 log data retention period moved to IA"
  default = 90
  type = number
}

variable "enable_lifecycle_rule" {
  description = "Whether to enable lifecycle rule"
  default = true
  type = bool
}
