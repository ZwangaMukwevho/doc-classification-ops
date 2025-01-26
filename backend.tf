terraform {
    backend "s3" {
        bucket = "cdk-hnb659fds-assets-852580398288-eu-west-1"
        key = "terraform/backend"
        region = "eu-west-1"
    }
}