variable "aws_region" {
  default = "eu-west-1"
}

variable "aws_provider_profile" {
  default = "packer-terraform-dev-env"
}

variable "storage_bucket_name" {
  default = "packer-terraform-s3-storage"
}

variable "storage_bucket_acl" {
  default = "private"
}

variable "s3_actions" {
  type        = "list"
  default     = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"]
  description = "Actions that are allowed to use on bucket"
}

variable "s3_resource" {}
