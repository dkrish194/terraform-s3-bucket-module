resource "aws_s3_bucket" "bucket" {
  for_each = var.bucket_name
  bucket   = "${var.org-name}-${var.project}-${var.environment}-${each.key}"
  tags = {
    name = "${each.key}"
    # environment = 
  }
}

resource "aws_s3_bucket_public_access_block" "s3_bucket" {
  for_each                = var.bucket_name
  bucket                  = aws_s3_bucket.bucket[each.key].id
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}

resource "aws_s3_bucket_versioning" "version" {
  for_each = var.bucket_name
  bucket   = aws_s3_bucket.bucket[each.key].id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse_s3_config" {
  for_each = aws_s3_bucket.bucket
  bucket   = each.value.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}