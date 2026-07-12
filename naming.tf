data "aws_region" "main" {
}

data "aws_region" "core" {
  provider = aws.core
}

module "naming" {
  source = "github.com/cailleach-devops/terraform-aws-naming-common.git"
  
  git_organization = var.git_organization
  initiative = var.initiative
  environment = var.environment
  tier = var.tier
  main_region = data.aws_region.main.region
  core_region = data.aws_region.core.region

  depends_on = [ module.aws-networking ] 
}