# specify one user policy per line or "resource" 
# only one user per resource
# only one policy per resource 
# if a user has two or more policies, add each as a separate resource for that user 
# if a policy applies to two or more users, add each combination as a separate resource 

# the template below demonstrates an example. use as template. replace user-policy names, user names and policy names as required.  

resource "aws_iam_user_policy_attachment" "john_AdministraterAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "john"
}

resource "aws_iam_user_policy_attachment" "john_IAMUserChangePassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = "john"
}

resource "aws_iam_user_policy_attachment" "sara_IAMUserChangePassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = "sara"
}
