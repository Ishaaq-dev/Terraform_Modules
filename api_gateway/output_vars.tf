output "api_id" {
  description = "The ID of the API Gateway"
  value       = aws_api_gateway_rest_api.api.id
}

output "root_resource_id" {
  description = "The root resource ID of the API Gateway (used for top-level resources/methods)"
  value       = aws_api_gateway_rest_api.api.root_resource_id
}

output "api_name" {
  description = "The name of the API Gateway"
  value       = aws_api_gateway_rest_api.api.name
}

output "execution_arn" {
  description = "The execution ARN of the API Gateway"
  value       = aws_api_gateway_rest_api.api.execution_arn
}

output "body" {
  value = aws_api_gateway_rest_api.api.body
}