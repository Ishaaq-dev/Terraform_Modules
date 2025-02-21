output "policy_id" {
  description = "The ID of the IAM policy"
  value       = aws_iam_policy.policy.id
}

output "policy_arn" {
  description = "The ARN of the IAM policy"
  value       = aws_iam_policy.policy.arn
}

output "policy_name" {
  description = "The name of the IAM policy"
  value       = aws_iam_policy.policy.name
}
