resource "aws_iam_user_policy" "<user-policy-name>" { # replace <> with user policy name
  name = "policy-name" # add the policy name 

  policy = <<POLICY
  # add the full json permission block from aws directly below 
{
  "Statement": [
    {
      "Action": "<action>",
      "Effect": "Allow",
      "Resource": "<arn>"
    }
  "Version": "2012-10-17"
}
POLICY

  user = "<username>" # add the user name 
}

# add more as needed 