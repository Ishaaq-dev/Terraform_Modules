variable "allocated_storage" {
  type = number
}

variable "db_name" {
  type = string
}

variable "instance_class" {
  type = string
}

variable "engine" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "parameter_group_name" {
  type = string
}

variable "tags" {
  type = map(string)
}