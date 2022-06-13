resource "aws_instance" "main" {
  ami           = lookup(var.ami, var.region)
  instance_type = var.instance_type

  tags = var.tags
}
