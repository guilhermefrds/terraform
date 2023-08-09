resource "aws_instance" "minecraft-server" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}