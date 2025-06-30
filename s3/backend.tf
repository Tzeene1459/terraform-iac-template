terraform {
  backend "s3" {
    bucket = "your.bucket"  # S3 bucket name
    key    = "pathto/terraform-state/bucket-in-s3"  # State file path within the bucket
    region = "aws-region" # replace with your region
  }
}