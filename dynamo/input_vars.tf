variable "table_name" {
  type = string
}

variable "hash_key" {
  type = string
}

variable "read_capacity" {
  type = number
}

variable "write_capacity" {
  type = number
}

variable "tags" {
  type = map(string)
}
