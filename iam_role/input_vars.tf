variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable role_version {
    description = "assume role policy version"
    type = string
    default = "2012-10-17"
}


variable "assume_role_statements" {
  description = "List of assume role policy statements"
  type = list(object({
    actions    = list(string)
    effect     = string
    principals = map(list(string)) 
  }))
}

variable "policy_arns" {
  description = "List of IAM policy ARNs to attach to the role"
  type        = list(string)
  default     = []
}
