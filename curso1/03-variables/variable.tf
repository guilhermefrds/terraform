variable "aws_region" {
  type        = string
  description = "region of aws account"
  default = "gdfssfd"
}

variable "envinronment" {
  type        = string
  description = "environmnet"

}

variable "instance_ami" {
  type        = string
  description = "ami instance value"
}

variable "instance_type" {
  type        = string
  description = "instance type"
}

variable "bucket_name" {
  type        = string
  description = "instance type"
}

variable "instance_tags" {
  type        = map(string)
  description = "instance tags"
  default = {
    Name    = "minecraft-server"
    Project = "Curso aws com terraform"
    owner   = "Guilherme"
    Version = "1.20"
  }
}