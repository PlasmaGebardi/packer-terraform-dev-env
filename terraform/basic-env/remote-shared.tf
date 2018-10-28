data "terraform_remote_state" "storage" {
  backend = "s3"

  config {
    bucket  = "packer-terraform-dev-env"
    key     = "storage/terraform.tfstate"
    region  = "eu-west-1"
    profile = "packer-terraform-dev-env"
  }
}
