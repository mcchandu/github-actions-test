provider "aws" {
  region = var.region
}

module "common" {
  source = "../common"

  environment  = var.environment
  project_name = var.project_name
}

######### SNS Topic ############################
resource "aws_sns_topic" "sns_topic" {
  for_each          = { for i in local.instances : i.name => i.opsgenie_endpoint }
  name              = "ServerAlerts-${each.key}"
  tags              = module.common.tags
  kms_master_key_id = data.aws_kms_key.sns_key.arn
}

########## SNS Subscription ######################
resource "aws_sns_topic_subscription" "instance_sns_subscription" {
  count     = length(local.instances)
  topic_arn = aws_sns_topic.sns_topic[local.instances[count.index].name].arn
  protocol  = "https"
  endpoint  = local.instances[count.index].opsgenie_endpoint
}

############ Server Helth Alert #####################
resource "aws_cloudwatch_metric_alarm" "server_health_alarm" {
  for_each            = { for i in local.instances : i.name => i }
  alarm_name          = "ServerHealth-${each.value.name}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "StatusCheckFailed"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Maximum"
  threshold           = "0"
  alarm_description   = "Server health alarm for ${data.aws_instance.instance_ids[each.value.name].id}"
  alarm_actions       = [aws_sns_topic.sns_topic[each.value.name].arn]
  tags                = module.common.tags
  dimensions = {
    InstanceId = data.aws_instance.instance_ids[each.value.name].id
  }
}

############ Server CPU Alerts #####################
resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  for_each            = { for i in local.instances : i.name => i }
  alarm_name          = "CPUHigh-${each.value.name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Maximum"
  threshold           = "80"
  alarm_description   = "CPU high usage alarm for ${data.aws_instance.instance_ids[each.value.name].id}"
  alarm_actions       = [aws_sns_topic.sns_topic[each.value.name].arn]
  tags                = module.common.tags
  dimensions = {
    InstanceId = data.aws_instance.instance_ids[each.value.name].id
  }
}

############ Server Memory Alerts #####################
resource "aws_cloudwatch_metric_alarm" "instance_memory_alarms" {
  for_each            = { for i in local.instances : i.name => i }
  alarm_name          = "MemoryUsageAlarm-${each.value.name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "Memory % Committed Bytes In Use"
  namespace           = "CWAgent"
  period              = "60"
  statistic           = "Maximum"
  threshold           = "80"
  alarm_description   = "Memory usage alarm when >= 80 % for 1 datapoint within 1 minute"
  alarm_actions       = [aws_sns_topic.sns_topic[each.value.name].arn]
  tags                = module.common.tags

  dimensions = {
    InstanceId   = data.aws_instance.instance_ids[each.value.name].id
    InstanceType = data.aws_instance.instance_ids[each.value.name].instance_type
    ImageId      = data.aws_instance.instance_ids[each.value.name].ami
    objectname   = "Memory"
  }

}

################ Disk usage alerts #################
locals {
  alarms = flatten([
    for instance in local.instances : [
      for drives in instance.drives : {
        name              = instance.name
        opsgenie_endpoint = instance.opsgenie_endpoint
        threshold         = instance.threshold
        drives            = drives
      }
    ]
  ])
}

resource "aws_cloudwatch_metric_alarm" "instance_disk_alarms" {
  for_each            = { for idx, alarm in local.alarms : idx => alarm }
  alarm_name          = "DiskUsageAlarm-${each.value.name}-${each.value.drives}"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "LogicalDisk % Free Space"
  namespace           = "CWAgent"
  period              = "300"
  statistic           = "Minimum"
  threshold           = each.value.threshold
  alarm_description   = "${each.value.name}|Disk usage alarm when <= 20% free space for 1 datapoint within 5 minutes"
  alarm_actions       = [aws_sns_topic.sns_topic[each.value.name].arn]

  dimensions = {
    instance     = each.value.drives
    InstanceId   = data.aws_instance.instance_ids[each.value.name].id
    InstanceType = data.aws_instance.instance_ids[each.value.name].instance_type
    ImageId      = data.aws_instance.instance_ids[each.value.name].ami
    objectname   = "LogicalDisk"
  }

  tags = module.common.tags
}
