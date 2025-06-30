data "terraform_remote_state" "subnet" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.terraform_state_bucket_on_s3
    key = "pathto/subnetstatefile/interraformbucket"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.terraform_state_bucket_on_s3
    key = "pathto/vpcstatefile/interraformbucket"
  }
}
