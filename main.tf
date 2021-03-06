resource "aws_instance" "main" {
  ami           = lookup(var.ami, var.region)
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = var.tags
}
