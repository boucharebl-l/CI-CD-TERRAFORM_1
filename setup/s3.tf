resource "aws_s3_bucket" "tfState" {
  bucket = "tfstate-848955332034-project-lab-1"

  force_destroy = true

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "Backend"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning_for_tfState" {
  bucket = aws_s3_bucket.tfState.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse_for_tfState" {
  bucket = aws_s3_bucket.tfState.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "pab_for_tfState" {
  bucket = aws_s3_bucket.tfState.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
