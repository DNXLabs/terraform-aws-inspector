# terraform-aws-inspector

[![Lint Status](https://github.com/DNXLabs/terraform-aws-inspector/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-inspector/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-inspector)](https://github.com/DNXLabs/terraform-aws-inspector/blob/master/LICENSE)


This module creates all infrastructure necessary to enable Amazon Inspector.

The following resources will be created:

 - Cloudwatch events rules and targets
 - IAM roles and Policies
 - AWS Inspector assessment target and templates
 - Define assessment duration
 - Include ruleset in the Inspector assessment. (CVE,CIS,Security Best Pratices and Network reachability)


 # Optional

- enable_scheduled_event - Default true; A way to disable Inspector from running on a schedule
- schedule_expression - Default rate(30 days); How often to run an Inspector assessment. See AWS Schedule Expression documentation for more info on formatting.s
- assessment_duration - Default 3600; How long the assessment runs in seconds.
    

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| assessment\_duration | The duration of the Inspector assessment run | `string` | `"3600"` | no |
| assessment\_ruleset | A list of AWS Inspector rules that should run on a periodic basis.<br>Possible rules: Common Vulnerabilities and Exposures(CVE) / CIS Operating System Security Configuration Benchmarks (CIS)/ Network Reachability / Security Best Practices<br>Get the Inspector rule arns by region: https://docs.aws.amazon.com/inspector/latest/userguide/inspector_rules-arns.html<br>example: assessment\_ruleset   = ["arn:aws:inspector:us-east-2:646659390643:rulespackage/0-m8r61nnh"] | `list(string)` | n/a | yes |
| aws\_account\_id | AWS Account ID | `string` | n/a | yes |
| enable\_scheduled\_event | Enable Cloudwatch Events to schedule an assessment | `bool` | `true` | no |
| name\_prefix | name prefix | `string` | `""` | no |
| region | AWS Region. | `any` | n/a | yes |
| schedule\_expression | AWS Schedule Expression: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html | `string` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-inspector/blob/master/LICENSE) for full details.