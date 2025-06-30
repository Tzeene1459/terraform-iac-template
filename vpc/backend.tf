terraform {
  backend "s3" {
    region = "<your region>"
    bucket = "<your s3 bucket>"  # S3 bucket name
    key    = "path/to/vpcstatefile/within/bucket"  # State file path within the bucket
  }
}