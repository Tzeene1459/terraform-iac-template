# attach policies with roles 

resource "aws_iam_role_policy_attachment" "<role-policy-name>" { # replace <..>
  policy_arn = "<arn-to-policy>" # replace <..> with policy arn
  role       = "<role-name>" # replace <..> with role name 
}

# add more as needed 