provider "aws" {
  region = var.REGION

  # ← This is the only place endpoint overrides belong
  # endpoints {
  #   ec2 = "http://localhost:4566"
  #   iam = "http://localhost:4566"
  #   sts = "http://localhost:4566"
  #   # …
  # }

  # skip_credentials_validation = true
  # skip_metadata_api_check     = true
  # skip_requesting_account_id  = true
}
