resource "aws_iam_role" "role" {
  name               = var.role_name
  assume_role_policy = jsonencode({
    Version   = var.role_version
    Statement = [
      for stmt in var.assume_role_statements : {
        Action    = stmt.actions
        Effect    = stmt.effect
        Principal = stmt.principals
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  for_each = zipmap(
    [for idx in range(length(var.policy_arns)) : "policy-${idx}"],
    var.policy_arns
  )

  role       = aws_iam_role.role.name
  policy_arn = each.value
}