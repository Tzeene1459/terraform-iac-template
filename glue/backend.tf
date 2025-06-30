terraform {
  backend "s3" {
    bucket = "<your s3 bucket>"  # S3 bucket name
    key    = "pathto/gluestatefile/interraformbucket"  # State file path within the bucket
    region = "<your-region>"
  }
}