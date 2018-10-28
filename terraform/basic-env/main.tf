data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "dev-machine" {
  ami                         = "${data.aws_ami.amazon-linux.id}"
  instance_type               = "t2.micro"
  key_name                    = "${var.ec2_keypair_name}"
  vpc_security_group_ids      = ["${aws_security_group.packer-terraform-sg.id}", "${aws_security_group.factorio-sg.id}"]
  iam_instance_profile        = "${data.terraform_remote_state.storage.iam_ec2_role.name}"
  associate_public_ip_address = true

  tags = {
    Name      = "packer-terraform-${var.packer_terraform_id}-dev-machine"
    Terraform = "True"
  }

  lifecycle {
    create_before_destroy = true
  }
}
