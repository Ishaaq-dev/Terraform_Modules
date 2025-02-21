variable "policy_name" {
  type = string
}

variable "policy_path" {
  type = string
}

variable "policy_description" {
    type = string
}

variable "policy_version" {
  type = string
  default = "2012-10-17"
}

variable "policy_statements" {
    description = "List of policy statements"
  type = list(object({
    actions   = list(string)
    effect    = string
    resources = list(string)
  }))
}