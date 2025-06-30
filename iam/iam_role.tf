resource "aws_iam_role" "<role-name>" { # replace <..> with role name  
  assume_role_policy = <<POLICY
  # copy permissions from aws iam directly below 
{
  "Statement": [
    {
      "Action": "<action>", # replace <> with the action eg sts:AssumeRole
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "<service1>", # replace with service name eg. sagemaker.amazonaws.com
          "<service2>"
          # add more separated by comma as needed 
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy will be used for xyz service."
  managed_policy_arns  = ["arn1","arn2"] # add the arns to services 
  max_session_duration = "3600"
  name                 = "<role-name>" # add the role name 
  path                 = "/path-to-role/" # eg. /service-role/
}


# add more as needed 