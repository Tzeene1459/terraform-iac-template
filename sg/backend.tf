terraform {
  backend "s3" {
    bucket = "s3-bucket"  # S3 bucket name that contains your terraform state 
    key    = "path-to/sg/in-tf-state-bucket"  # State file path within the bucket
    region = "aws-region" # replace with your region
  }
}