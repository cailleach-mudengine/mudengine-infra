data "aws_region" "main" {
}

data "aws_region" "admin" {
  provider = aws.core
}

module "naming" {
  source = "github.com/cailleach-devops/terraform-aws-naming-common.git?ref=feature/refactor"
  
  git_organization = var.git_organization
  initiative = var.initiative
  environment = var.environment
  main_region = data.aws_region.main.region
  admin_region = data.aws_region.admin.region

  depends_on = [ module.aws-networking ] 
}