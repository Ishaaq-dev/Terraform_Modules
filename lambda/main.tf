data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = var.source_code_path   # Path to your source code folder
  output_path = "${path.module}/lambda.zip"  # Output path for the ZIP file
}

resource "aws_lambda_function" "function" {
  function_name = var.lambda_name
  role          = var.role_arn
  handler       = var.function_handler
  runtime       = var.function_runtime
  filename      = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
}