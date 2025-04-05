variable "api_id" {
    type = string
}

variable "parent_resource_id" {
  type = string
}

variable "resource_path" {
  type = string
}

variable "http_method" {
  type = string
}

variable "authorization" {
  type = string
  default = "NONE"
}

variable "lambda_invoke_arn" {
  type = string
}

variable "integration_http_method" {
  type = string
  default = "POST"
}

variable "type" {
  type = string
  default = "AWS_PROXY"
}