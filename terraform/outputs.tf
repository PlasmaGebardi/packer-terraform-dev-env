output "dev_machine_public_dns" {
  value = "${aws_instance.dev-machine.public_dns}"
}
