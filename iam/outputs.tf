# your output file will look like this

# each component will be output as a resource: 
# access keys, user, user policy, user policy attachment, groups, 
# user group attachement, role, role policy attachment, policy, 
# group policy attachment 

# replace <..> below

output "aws_iam_access_key_<access-key-name>" { 
  value = "${aws_iam_access_key.<access-key>.id}" 
}

output "aws_iam_group_policy_attachment_<group-policy-attachement-name>" { 
  value = "${aws_iam_group_policy_attachment.<group-policy-attachment-name>.id}"
}

output "aws_iam_group_<group-name>" {
  value = "${aws_iam_group.<group-name>.id}"
}

output "aws_iam_policy_<policy-name>" {
  value = "${aws_iam_policy.<policy-name>.id}"
}

output "aws_iam_role_policy_attachment_<role-policy-attachment-name>" {
  value = "${aws_iam_role_policy_attachment.<roly-policy-attachment-name>.id}"
}

output "aws_iam_role_<role-name>" {
  value = "${aws_iam_role.<role-name>.id}"
}

output "aws_iam_user_group_membership_<user-group-membership-name>" {
  value = "${aws_iam_user_group_membership.<user-group-membership-name>.id}"
}

output "aws_iam_user_policy_attachment_<user-policy-attachment-name>" {
  value = "${aws_iam_user_policy_attachment.<user-policy-attachement-name>.id}"
}

output "aws_iam_user_policy_<user-policy-name>" {
  value = "${aws_iam_user_policy.<user-policy-name>.id}"
}

output "aws_iam_user_<username>" {
  value = "${aws_iam_user.<username>.id}"
}
