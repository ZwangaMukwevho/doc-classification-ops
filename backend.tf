terraform {

  # Comment this out if you want to use tflocal to test terraform configuration locally
  backend "s3" {
    bucket = "cdk-hnb659fds-assets-852580398288-eu-west-1"
    key    = "terraform/backend"
    region = "eu-west-1"
  }

  # Uncomment if you want to use tflocal to test terraform configuration locally
  # backend "local" {
  #   path = "terraform.tfstate"
  # }
}