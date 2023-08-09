terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
#  backend "s3" {
#    bucket = "mybucket"
#    key    = "dev/01-usando-remote-state/terraform.tfstate"
#    region = "us-east-1"
#  }
}

provider "aws" {
  region = "us-east-1"
}

#data "aws_caller_identity" "current" {
#}

#resource "aws_s3_bucket" "remote-state" {
#  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
#
#  versioning {
#    enabled = true
#  }
#
#  tags = {
#    description = "stores terraform remote state files"
#    managedBy = "terraform"
#  }
#
#  output "remote_state_bucket" {
#    value = aws_s3_bucket.remote-state.arn
#  }
#}