resource "aws_iam_group" "<group-name>" { # replace <> with group name eg Admins/Developers etc
  name = "<name>" # replace with the name of the group 
  path = "/"
}
# add more as needed 