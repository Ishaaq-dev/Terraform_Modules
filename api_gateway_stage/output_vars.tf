output "invoke_url" {
  description = "The URL to invoke the API stage"
  value       = "https://${var.api_id}.execute-api.${var.region}.amazonaws.com/${var.stage_name}/"
}