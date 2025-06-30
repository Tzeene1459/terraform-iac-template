resource "aws_iam_group_policy_attachment" "<group-policy-id>" { # replace <> with the id of your group policy
  group      = "<group-name>" # add the group name for eg. Admins/Developers etc 
  policy_arn = "arn:to:aws:iam::aws:policy/name" # replace with the arn to your policy 
}

# add more as needed with the configs above 