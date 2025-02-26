variable "region" {
  description = "AWS Region."
  type        = string
}

variable "name_prefix" {
  description = "name prefix"
  type        = string
}

variable "aws_account_id" {
  type = string
}

variable "assessment_duration" {
  type        = string
  description = "The duration of the Inspector assessment run"
  default     = "3600" # 1 hour
}

variable "enable_scheduled_event" {
  type        = bool
  description = "Enable Cloudwatch Events to schedule an assessment"
  default     = true
}

variable "schedule_expression" {
  type        = string
  description = "AWS Schedule Expression: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html"
}

variable "enabled_rules" {
  type        = list(string)
  description = "List of rules that inspector should run. Valid values are `cve`, `cis`, `nr`, `sbp`"
}
