resource "aws_lambda_function" "analysis_lambda" {
  filename      = "resources/lambda_function_payload.zip"
  function_name = "${local.resource_prefix.value}-analysis"
  role          = "${aws_iam_role.iam_for_lambda.arn}"

  source_code_hash = "${filebase64sha256("resources/lambda_function_payload.zip")}"

  environment {
    variables = {
      access_key = "AKIAUEVERSZE2TC2BZHB"
      secret_key = "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"
    }
  }
}
