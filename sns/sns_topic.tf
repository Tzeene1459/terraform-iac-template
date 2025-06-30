resource "aws_sns_topic" "sns_topic" {
  name                        = var.topic_name
  fifo_topic                  = var.fifo_topic
  content_based_deduplication = var.content_based_deduplication
  signature_version           = var.signature_version

  application_success_feedback_sample_rate = var.application_success_feedback_sample_rate
  firehose_success_feedback_sample_rate    = var.firehose_success_feedback_sample_rate
  http_success_feedback_sample_rate        = var.http_success_feedback_sample_rate
  lambda_success_feedback_sample_rate      = var.lambda_success_feedback_sample_rate
  sqs_success_feedback_sample_rate         = var.sqs_success_feedback_sample_rate

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "${var.source_owner}"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "${var.sns_arn}",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "${var.policy_version}"
}
POLICY
}

# add more resources as needed 