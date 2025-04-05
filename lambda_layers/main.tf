resource "aws_lambda_layer_version" "layer" {
  filename   = var.layer_zip_path
  layer_name = var.layer_name
  compatible_runtimes = var.compatible_runtimes
  description = var.description
}
