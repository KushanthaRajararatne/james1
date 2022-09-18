resource "aws_s3_bucket" "mybugs" {
  bucket = "my-bucket"
  acl    = "public-read"

  tags = {
    Name        = "My bag"
    Environment = "Dev"
  }

  versioning {
    enabled = true
  }
}
