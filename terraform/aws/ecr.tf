resource "aws_ecr_repository" "webapp" {
  name                 = "webapp/backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
