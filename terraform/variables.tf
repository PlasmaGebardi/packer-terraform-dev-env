variable "aws_region" {
  default = "eu-west-1"
}

variable "aws_provider_profile" {
  default = "packer-terraform-dev-env"
}

variable "aws_tf_bucket" {
  default = "packer-terraform-dev-env"
}

variable "packer_terraform_id" {
  default = "basic"
}

variable "ec2_keypair_name" {
  default = "packer-terraform-dev"
}

variable "vpn_cidr" {}
