provider "aws" {
  region = "us-west-2"
}


resource "aws_ssm_parameter" "default" {
  for_each = local.params.parameter
  name     = each.value.name
  type     = each.value.type
  value    = each.value.value
}
