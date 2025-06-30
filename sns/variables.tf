data "terraform_remote_state" "sns" {
  backend = "s3"

  config = {
    region = var.aws_region # replace with region 
    bucket = var.tf_state_bucket # replace with the name of your state bucket 
    key = "path-to/sns/in-tf-state-bucket" # replace with actual path 
  }
}
