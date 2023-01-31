resource "aws_s3_bucket" "sahhi" {
  bucket = "hahzbucket"
  acl    = "private"

  tags = {
    Name        = "jan29s3"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "sahhi_example" {
  bucket = aws_s3_bucket.sahhi.id
  versioning_configuration {
    status = "Enabled"
  }
}