resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name
}


# Uploading an S3 object
resource "null_resource" "upload_files" {
  depends_on = [aws_s3_bucket.b]
  provisioner "local-exec" {
  command = <<EOT
  aws s3 cp ./s3_module/uploads s3://${aws_s3_bucket.b.bucket}/ --recursive
  EOT
  }
}

  
