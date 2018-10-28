output "iam_ec2_role" {
  value = "${aws_iam_role.ec2_assume_role.name}"
}
