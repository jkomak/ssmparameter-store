locals {
params            = yamldecode(file("${path.module}/ssm_params.yaml"))
}

