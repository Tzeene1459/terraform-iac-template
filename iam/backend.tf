terraform {
  backend "s3" {
    bucket = "<your-tf-bucket>"  # S3 bucket name
    key    = "pathto/iamstatefile/interraformbucket"  # State file path within the bucket
    region = "<your-region>"
  }
}