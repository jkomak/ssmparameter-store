data "aws_ssm_parameter" "read" {
  for_each = local.params.parameter
  name = each.value.name
}