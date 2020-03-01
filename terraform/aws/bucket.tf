resource "aws_s3_bucket" "mybucket" {
  bucket              = var.aws_s3_bucket
  region              = var.aws_region
  acl                 = "private"
  acceleration_status = "Enabled"

  cors_rule {
    allowed_origins = ["https://${var.dns_url}"]
    allowed_methods = ["PUT", "POST", "DELETE", "GET"]
    expose_headers  = ["ETag", "Accept-Ranges", "Content-Encoding", "Content-Length", "Content-Range"]
    allowed_headers = ["*"]
    max_age_seconds = 120
  }

}
