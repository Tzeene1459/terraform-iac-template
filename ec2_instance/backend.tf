terraform {
  backend "s3" {
    bucket = "<your s3 bucket>"  # S3 bucket name
    key    = "path/to/ec2statefile/within/bucket"  # State file path within the bucket
    region = "<your region>"
  }
}