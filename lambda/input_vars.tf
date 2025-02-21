variable "lambda_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role for Lambda execution"
  type        = string
}

variable "function_handler" {
  description = "The function handler in the Lambda code"
  type        = string
}

variable "function_runtime" {
  description = "The runtime for the Lambda function"
  type        = string
  default     = "nodejs22.x"
}

variable "source_code_path" {
  description = "The path to the directory containing Lambda source code"
  type        = string
}