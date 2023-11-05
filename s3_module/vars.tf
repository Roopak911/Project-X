variable "bucket_name" {
  type        = string
  description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
}

variable "acl_value" {
  type = string
}

variable "region" {
  type = string
}

