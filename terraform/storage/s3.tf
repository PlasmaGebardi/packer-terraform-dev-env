resource "aws_s3_bucket" "bukkit" {
  bucket = "${var.storage_bucket_name}"
  acl    = "${var.storage_bucket_acl}"

  lifecycle {
    prevent_destroy = true
  }
}
