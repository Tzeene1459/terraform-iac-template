resource "aws_iam_policy" "<policy-name>" { # replace <> with policy name 
  name = "<policy-name>"  # replace with policy name
  path = "/path/" # add path to the policy eg. /servicerole/

  policy = <<POLICY

  # the full json for this policy from aws goes below. just copy from aws directly 
{
  "Statement": [
    {
      "Action": [], # exact action with resource goes here eg. [s3:GetObject]
      "Effect": "Allow",
      "Resource": "<arn>", # the arn to the resource 
      "Sid": "<sid>" # sid 
    },
      # add any other permissions below, eg:
    {
      "Action": [],
      "Effect": "Allow",
      "Resource": "<arn>",
      "Sid": "<sid>"
    },
  ],
  "Version": "2012-10-17"
}
POLICY
}
