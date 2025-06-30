terraform {
  backend "s3" {
    bucket = "<your-terraform-bucket>"  # S3 bucket name
    key    = "pathto/igwstatefile/interraformbucket"  # State file path within the bucket
    region = "<your-region>"
  }
}