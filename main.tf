resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-vlad"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}