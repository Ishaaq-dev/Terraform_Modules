output "resource_id" {
  description = "The ID of the API Gateway resource (e.g. /users)"
  value       = aws_api_gateway_resource.resource.id
}

output "resource_path" {
  description = "The full path part of the resource"
  value       = aws_api_gateway_resource.resource.path
}

output "method_http_method" {
  description = "The HTTP method that was created (GET, POST, etc.)"
  value       = aws_api_gateway_method.method.http_method
}

output "method_integration_uri" {
  description = "The URI of the integration (usually Lambda ARN)"
  value       = aws_api_gateway_integration.integration.uri
}
