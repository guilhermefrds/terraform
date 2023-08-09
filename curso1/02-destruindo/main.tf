provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-trolho-trolho-trolho"

  tags = {
    Name        = "My first terraform bucket"
    Environment = "dev"
    ManagedBy   = "terraform"
    owner       = "Guilherme"
    UpdateDAt   = "11/07/2023"
  }
}

resource "aws_instance" "minecraft-server" {
  ami           = "ami-04823729c75214919"
  instance_type = "t2.micro"
 
  tags = {
    Name        = "minecraft-server"
    owner       = "Guilherme"
    Version     = "1.20"
  }
}
