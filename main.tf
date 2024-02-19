resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-vlad"
  force_destroy = true
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
