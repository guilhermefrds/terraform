variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_ami" {
  default = "ami-04823729c75214919"
}

variable "instance_tags" {
  type = map(string)
  default = {
    Name    = "minecraft-server"
    owner   = "Guilherme"
    Version = "1.20"
  }
}