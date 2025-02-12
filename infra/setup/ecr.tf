###########################################################3
######Create ECR Repos for storing Docker images#############
#################################################################

resource "aws_ecr_repository" "app" {
  name                 = "recipe-app-api-app"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    #Note for real deployment update to true"
    scan_on_push = false
  }

}

resource "aws_ecr_repository" "proxy" {
  name                 = "recipe-app-api-proxy"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # Update to true for real deployment
    scan_on_push = false
  }
}
