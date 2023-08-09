provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "My first terraform bucket"
    Environment = "dev"
    ManagedBy   = "terraform"
    owner       = "Guilherme"
    UpdateDAt   = "11/07/2023"
  }
}

resource "aws_instance" "minecraft-server" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}
