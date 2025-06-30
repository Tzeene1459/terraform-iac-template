# we used a bunch of variables when defining the security group, and subnet before, so they must be specified in the variables file 


data "terraform_remote_state" "sg" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.<name-of-bucker-that-holds-your-tf-backend> # eg. var.terraform_state_bucket_on_s3 
    key = "path/to/sgtatefile/in/terraformbucket"
  }
}

data "terraform_remote_state" "subnet" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.terraform_state_bucket_on_s3
    key = "path/to/subnetstatefile/in/terraformbucket"
  }
}
