resource "aws_iam_role" "ec2_assume_role" {
  name               = "ec2_assume_role"
  assume_role_policy = "${file("assumerolepolicy.json")}"
}

data "aws_iam_policy_document" "factorio_policy_document" {
  statement {
    actions   = ["${var.s3_actions}"]
    resources = ["${var.s3_resource}/*"]
    effect    = "Allow"
  }

  statement {
    actions   = ["s3:ListBucket"]
    resources = ["${var.s3_resource}"]
  }
}

resource "aws_iam_policy" "factorio_policy" {
  name   = "factorio_iam_policy"
  path   = "/"
  policy = "${data.aws_iam_policy_document.factorio_policy_document.json}"
}

resource "aws_iam_role_policy_attachment" "factorio_policy_attach" {
  role       = "${aws_iam_role.ec2_assume_role.name}"
  policy_arn = "${aws_iam_policy.factorio_policy.arn}"
}

resource "aws_iam_instance_profile" "factorio_instance_profile" {
  name = "factorio_instance_profile"
  role = "${aws_iam_role.ec2_assume_role.name}"
}
