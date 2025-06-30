terraform {
  backend "s3" {
    bucket = "s3.bucket.name"  # S3 bucket name
    key    = "path-to/sns/in-tf-bucket"  # State file path within the bucket
    region = "region"
  }
}