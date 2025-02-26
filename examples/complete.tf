module "inspector" {
  source              = "./.."
  aws_account_id      = local.workspace.aws_account_id
  region              = local.workspace.aws_region
  enabled_rules       = ["cve"]
  schedule_expression = "cron(0 4 * * ? *)"
  name_prefix         = local.workspace.account_name
}
