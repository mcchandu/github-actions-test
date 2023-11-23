data "aws_instance" "instance_ids" {
  for_each = { for i in local.instances : i.name => i }

  filter {
    name   = "tag:Name"
    values = [each.key]
  }
}

data "aws_kms_key" "sns_key" {
  key_id = "alias/aws/sns"
}

data "aws_caller_identity" "current" {}

data "aws_iam_session_context" "current" {
  arn = data.aws_caller_identity.current.arn
}

data "aws_ssm_parameter" "opsgenie_key" {
  name = "/${var.environment}/alerts/cloudwatch/opsgenie/key"
}
