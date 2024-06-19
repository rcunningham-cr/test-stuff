provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-backend"
    key            = "aws/sqs/production-account/fsfsaf/terraform.tfstate"
    region         = "us-east-1"
    }
}

module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"

  name = "FilaDofsfsaf"

  create_dlq = true
  redrive_policy = {
    maxReceiveCount = 10
  }

  tags = {
    Company = "",
  }
}
