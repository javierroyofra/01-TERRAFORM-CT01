terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_aula" {
  bucket = "a24511"

  tags = {
    Name = "terraform-s3-javierroyo"
    Entorno = "Aula"
  }
}