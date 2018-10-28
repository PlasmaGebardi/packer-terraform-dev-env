terraform {
  required_version = "~> 0.11"

  backend "s3" {
    bucket         = "packer-terraform-dev-env"
    key            = "basic/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "packer-terraform-basic-terra-locks"
    encrypt        = "true"
    profile        = "packer-terraform-dev-env"
  }
}
