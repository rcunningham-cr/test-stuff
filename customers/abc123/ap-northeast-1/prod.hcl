bucket         = "tfstate-ap-northeast-1-138865427381"
key            = "kl-aws-tf-al-app-infrastructure/rev8/customers/abc123/prod/terraform.tfstate"
encrypt        = true
region         = "ap-northeast-1"
dynamodb_table = "tfstate-locks"
role_arn       = "arn:aws:iam::138865427381:role/terraform-github-actions"
