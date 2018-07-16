module "lambdash" {
  source = "github.com/claranet/terraform-aws-lambda"

  function_name = "lambdash"
  description   = "lambda deployment for lambdash to work"
  handler       = "index.handler"
  runtime       = "nodejs8.10"
  timeout       = 300

  // Specify a file or directory for the source code.
  source_path = "${path.module}/assets/lambda-index.js"

  // Attach a policy.
  //attach_policy = true
  //policy        = "${data.aws_iam_policy_document.lambda.json}"

  // Add a dead letter queue.
  //attach_dead_letter_config = true
  //dead_letter_config {
  //  target_arn = "${var.dead_letter_queue_arn}"
  //}

  // Add environment variables.
  //environment {
  //  variables {
  //    APP_ENDPOINT = "${var.app_endpoint}"
  //  }
  //}

  // Deploy into a VPC.
  //attach_vpc_config = true
  //vpc_config {
  //  subnet_ids         = ["${aws_subnet.test.id}"]
  //  security_group_ids = ["${aws_security_group.test.id}"]
  //}
}
