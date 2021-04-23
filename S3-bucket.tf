resource "aws_s3_bucket" "dev4" {
  bucket = "infra-dev4"
  acl    = "private"

  tags = {
    Name = "infra-dev4"
    #Environment = "Dev"
  }
}
