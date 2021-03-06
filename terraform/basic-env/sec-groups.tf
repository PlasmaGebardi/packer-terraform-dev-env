resource "aws_security_group" "packer-terraform-sg" {
  name        = "${var.packer_terraform_id}-sg"
  description = "Basic dev security group"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["${var.vpn_cidr}"]
    description = "SSH from vpn endpoint"
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }

  tags {
    Terraform = "True"
    Name      = "packer-terraform-${var.packer_terraform_id}-sg"
  }
}

resource "aws_security_group" "factorio-sg" {
  name        = "factorio-sg"
  description = "Security group to handle factorio related rules"

  ingress {
    protocol    = "udp"
    from_port   = 34197
    to_port     = 34197
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Terraform = "True"
    Name      = "factorio-sg"
  }
}
