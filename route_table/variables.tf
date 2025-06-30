data "terraform_remote_state" "route_table" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.terraform_state_bucket_on_s3
    key = "path-to/route-table/in-tfstate-bucket"
  }
}

data "terraform_remote_state" "subnet" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.terraform_state_bucket_on_s3
    key = "path-to/subnet/in-tfstate-bucket"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.terraform_state_bucket_on_s3
    key = "path-to/vpc/in-tfstate-bucket"
  }
}
