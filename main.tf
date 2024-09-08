resource "aws_instance" "Nima" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name       = "Nima"
    Created_by = var.created_by
  }
}