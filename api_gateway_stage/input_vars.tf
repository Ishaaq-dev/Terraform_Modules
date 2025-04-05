variable "api_id" {
  description = "API Gateway ID"
  type        = string
}

variable "stage_name" {
  description = "Name of the stage (e.g., dev, test, prod)"
  type        = string
}

variable "deployment_trigger" {
  description = "Trigger value to force redeployment"
  type        = string
}

variable "region" {
  type = string
}