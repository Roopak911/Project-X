resource "aws_s3_bucket" "b" {
  bucket_prefix = var.bucket_name
  acl = var.acl_value
}

  
