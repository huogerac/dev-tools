resource "aws_ecr_repository" "aweb" {
  name                 = "aweb-rzn/backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "daninhas" {
  name                 = "aweb-rzn/daninhas"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "falhas" {
  name                 = "aweb-rzn/falhas"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}