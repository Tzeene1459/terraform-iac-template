resource "aws_iam_access_key" "<resource-id>" { # replace <> with resource id
  depends_on = [aws_iam_user.<user-id>] # replace <> with correct user id 
  status     = "Active"
  user       = "<user-name>" # replace <> with user name
}
