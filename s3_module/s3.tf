resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name
  acl    = var.acl_value
}


# Creating an S3 object
resource "aws_s3_object" "object" {
  bucket     = aws_s3_bucket.b.id
  for_each   = fileset("uploads/", "*")
  key        = each.value
  source     = "uploads/${each.value}"
  etag       = filemd5("uploads/${each.value}")
  depends_on = [
    aws_s3_bucket.b
  ]
}

  
