resource "aws_iam_user" "<user-id>" { # replace <> with user id 
  force_destroy = "false"
  name          = "<username>" # replace <> with user name 
  path          = "/"
}

# example for users with a access key

resource "aws_iam_user" "<user-id>" {
  force_destroy = "false"
  name          = "<username>"
  path          = "/"

  tags = {
    <key-id> = "<description>" # add the key and the purpose 
  }

  tags_all = {
    <key-id> = "<description>" # add the key and purpose in the tags 
  }
}

# add more as needed 