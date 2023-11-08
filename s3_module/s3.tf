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


# # Creating a S3 bucket ACL
resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}


# Block S3 public access
resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.b.id
  block_public_acls   = true
  block_public_policy = true
}


