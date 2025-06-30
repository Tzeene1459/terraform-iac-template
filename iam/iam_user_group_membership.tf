# list one membership per resource 
# specify each user, and the group they belong to using this template 
# if a user belongs to two groups eg admins and developers, specify one membership of that user with one group, and then another with another group 

resource "aws_iam_user_group_membership" "<user-group-membership-name>" { # replace <>
  groups = ["<group>"] # replace < > with the actual group name 
  user   = "<user>" # replace < > with the user name 
}

# add more as needed 

