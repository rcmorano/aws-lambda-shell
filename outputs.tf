output "function_name" {
  value = "${module.lambdash.function_name}"
}

data "aws_region" "current" {
  current = true
}

output "region" {
  value = "${data.aws_region.current.name}"
}
