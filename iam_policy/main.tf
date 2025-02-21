resource "aws_iam_policy" "policy" {
  name        = var.policy_name
  path        = var.policy_path
  description = var.policy_description

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version   = var.policy_version
    Statement = [
      for stmt in var.policy_statements : {
        Action   = stmt.actions
        Effect   = stmt.effect
        Resource = stmt.resources
      }
    ]
  })
}